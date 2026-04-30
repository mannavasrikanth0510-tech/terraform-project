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

module "networking" {
  source            = "../../modules/networking"
  vpc_name          = var.vpc_name
  vpc_cidr          = var.vpc_cidr
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
}
