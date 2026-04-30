terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "storage" {
  source        = "../../modules/storage"
  bucket_prefix = var.bucket_prefix
}

variable "aws_region" {
  description = "AWS region for the dev environment"
  type        = string
}

variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name in dev"
  type        = string
}

output "bucket_name" {
  description = "Name of the dev S3 bucket"
  value       = module.storage.bucket_name
}

output "bucket_arn" {
  description = "ARN of the dev S3 bucket"
  value       = module.storage.bucket_arn
}

