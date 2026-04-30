module "storage" {
  source        = "../../modules/storage"
  bucket_prefix = var.bucket_prefix
}

