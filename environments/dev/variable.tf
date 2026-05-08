variable "aws_region" {
  description = "AWS region for the dev environment"
  type        = string
}

variable "bucket_name" {
  type = string
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

