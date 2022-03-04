terraform {
  required_providers {
    aws = {
      version = ">= 3.12"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
