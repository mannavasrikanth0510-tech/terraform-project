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

module "networking" {
  source            = "../../modules/networking"
  vpc_name          = var.vpc_name
  vpc_cidr          = var.vpc_cidr
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
}

variable "vpc_name" {
  description = "Name of the VPC in dev"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the dev VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the dev public subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the dev subnet"
  type        = string
}

output "vpc_id" {
  description = "ID of the dev VPC"
  value       = module.networking.vpc_id
}

output "subnet_id" {
  description = "ID of the dev public subnet"
  value       = module.networking.subnet_id
}

output "internet_gateway_id" {
  description = "ID of the dev internet gateway"
  value       = module.networking.internet_gateway_id
}