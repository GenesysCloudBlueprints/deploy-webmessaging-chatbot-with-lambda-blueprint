resource "aws_iam_role" "lambda_execution_role" {
  name               = "${local.resource_name_prefix}-LambdaExecutionRole"
  assume_role_policy = data.aws_iam_policy_document.lambda_execution_role_document.json
}

resource "aws_iam_role" "lambda_trust_role" {
  name               = "${local.resource_name_prefix}-TrustRole"
  assume_role_policy = data.aws_iam_policy_document.lambda_trustrelationship_policy_document.json
}