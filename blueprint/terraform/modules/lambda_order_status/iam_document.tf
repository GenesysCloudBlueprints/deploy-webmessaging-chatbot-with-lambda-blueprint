data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "lambda_execution_role_document" {
  version = "2012-10-17"
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      identifiers = ["lambda.amazonaws.com"]
      type        = "Service"
    }
    sid = "LambdaExecutionRole"
  }
}

data "aws_iam_policy_document" "lambda_execution_policy_document" {
  version = "2012-10-17"
  statement {
    effect = "Allow"
    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ]
    resources = ["*"] // Should be specific ARN
  }
}

data "aws_iam_policy_document" "lambda_trustedrole_policy_document" {
  version = "2012-10-17"
  statement {
    effect    = "Allow"
    actions   = ["lambda:InvokeFunction"]
    resources = ["arn:aws:lambda:${var.aws_region}:${data.aws_caller_identity.current.account_id}:function:${local.resource_name_prefix}-lambda"]
  }
}

data "aws_iam_policy_document" "lambda_trustrelationship_policy_document" {
  version = "2012-10-17"
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    condition {
      test     = "StringEquals"
      values   = [var.organizationId] 
      variable = "sts:ExternalId"
    }

    principals {
      type        = "AWS"
      identifiers = [local.genesys_cloud_account_arn]
    }
    sid = ""
  }
}


