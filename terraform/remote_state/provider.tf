terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
    backend "s3" {
    bucket = "phlabs"
    key    = "remote/terraform.tfstate" #any name
    region = "us-east-1"
    dynamodb_table = "phlabs-lock"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

