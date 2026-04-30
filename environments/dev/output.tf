output "bucket_name" {
  description = "Name of the dev S3 bucket"
  value       = module.storage.bucket_name
}

output "bucket_arn" {
  description = "ARN of the dev S3 bucket"
  value       = module.storage.bucket_arn
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


