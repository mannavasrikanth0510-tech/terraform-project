module "networking" {
  source            = "../../modules/networking"
  vpc_name          = var.vpc_name
  vpc_cidr          = var.vpc_cidr
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
}

