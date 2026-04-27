terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_s3_bucket" "this" {
  bucket = "${var.bucket_prefix}-${data.aws_caller_identity.current.account_id}"
}

data "aws_caller_identity" "current" {}
