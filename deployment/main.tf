terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "fake"
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  
  endpoints {
    iam     = var.aws_endpoint
    lambda  = var.aws_endpoint
    events  = var.aws_endpoint
    elb     = var.aws_endpoint
    elbv2   = var.aws_endpoint
  }
}
