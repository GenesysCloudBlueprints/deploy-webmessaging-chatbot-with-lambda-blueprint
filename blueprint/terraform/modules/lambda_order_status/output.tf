

output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "data_integration_trusted_role_arn" {
  value = aws_iam_role.lambda_trust_role.arn
}

output "lambda_arn" {
  value = aws_lambda_function.lambda_function.arn
}
