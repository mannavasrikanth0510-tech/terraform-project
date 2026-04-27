output "bucket_name" {
  description = "Name of the dev S3 bucket"
  value       = module.storage.bucket_name
}

output "bucket_arn" {
  description = "ARN of the dev S3 bucket"
  value       = module.storage.bucket_arn
}