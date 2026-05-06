module "storage" {
  source        = "../../modules/storage"
  bucket_prefix = var.bucket_prefix
}


output "bucket_name" {
  description = "Name of the dev S3 bucket"
  value       = module.storage.bucket_name
}

output "bucket_arn" {
  description = "ARN of the dev S3 bucket"
  value       = module.storage.bucket_arn
}
