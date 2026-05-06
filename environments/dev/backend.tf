terraform {
  backend "s3" {
    bucket         = "srikanth-dev-storage-20260506-1015"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
