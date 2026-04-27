terraform {
  backend "s3" {
    bucket         = "srikanth-dev-s3"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}