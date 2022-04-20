module "vpc" {
  source = "../vpc"
  region= var.region
  vpc_cidr_block = var.vpc_cidr_block
}

module "subnet" {
  source = "../subnet"
  vpc_id = module.vpc.vpc_id
  subnet_cidr_block = var.subnet_cidr_block
}
