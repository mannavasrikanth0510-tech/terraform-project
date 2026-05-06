module "networking" {
  source            = "../../modules/networking"
  vpc_name          = var.vpc_name
  vpc_cidr          = var.vpc_cidr
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
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
