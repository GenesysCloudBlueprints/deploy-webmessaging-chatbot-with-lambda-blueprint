locals {
  resource_name_prefix = "${var.environment}-${var.prefix}"
}

locals {
  go_runtime     = "go1.x"
  lambda_timeout = 10
}

locals {
  genesys_cloud_account_arn = "arn:aws:iam::765628985471:root" //this is for the prod genesys cloud.  Non prod regions have to use the AWS account number here
}

