terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  required_version = ">= 1.0"
}

provider "aws" {
  region = "us-east-1"  # Change this to your preferred AWS region
}

module "s3_dummy" {
  source      = "./modules/s3"
  bucket_name = "silver-guide-test"
  environment = var.environment
  tags = {
    Project = "SilverGuide"
    Owner   = "AAJaisiv"
    Env     = var.environment
  }
}