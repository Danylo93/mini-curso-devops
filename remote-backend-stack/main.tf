terraform {
backend "s3" {
    bucket         = var.remote_backend.bucket_name
    key            = "terraform.tfstate"
    region         = var.assume_role.region
    dynamodb_table = var.remote_backend.dynamo_table_name
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.assume_role.region
  assume_role {
    role_arn = var.assume_role.role_arn
  }
  default_tags {
    tags = var.tags
  }
}