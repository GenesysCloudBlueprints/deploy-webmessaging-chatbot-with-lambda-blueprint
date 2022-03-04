
variable "aws_region" {
  type        = string
  description = "Aws region where the resources to be provisioned."
}

variable "prefix" {
  type        = string
  description = "A name that is to be used as the resource name prefix. Usually it's the project name."
}

variable "environment" {
  type        = string
  description = "Name of the environment, e.g., dev, test, stable, staging, uat, prod etc."
}

variable "organizationId" {
  type        = string
  description = "Genesys Cloud Organization Id"
}

variable "lambda_zip_file" {
  type        = string
  description = "Fully qualified name of the zipfile"
}

variable "lambda_source_code_hash" {
  type        = string
  description = "Hash of the lambda to ensure overall lambda integrity"
}
