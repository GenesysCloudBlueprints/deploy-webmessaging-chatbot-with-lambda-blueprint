resource "aws_iam_role_policy" "lambda_execution_inline_policy" {
  name   = "LambdaExecutionInlinePolicy"
  role   = aws_iam_role.lambda_execution_role.id
  policy = data.aws_iam_policy_document.lambda_execution_policy_document.json
}

resource "aws_iam_role_policy" "lambda_trusted_policy" {
  name   = "${local.resource_name_prefix}-TrustedPolicy"
  role   = aws_iam_role.lambda_trust_role.id
  policy = data.aws_iam_policy_document.lambda_trustedrole_policy_document.json
}