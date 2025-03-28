terraform {
    backend "s3" {
    bucket         = "devops-na-nuvem-terraform-remote-backend-course"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "devops-na-nuvem-terraform-remote-backend-course"
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