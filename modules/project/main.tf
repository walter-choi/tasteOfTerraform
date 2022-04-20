module "vpc" {
  source = "../vpc"
  region= var.region
  vpc_cidr_block = var.vpc_cidr_block
  subnet_cidr_block = var.subnet_cidr_block
}  
