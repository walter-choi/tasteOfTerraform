module "vpc" {
  source = "../vpc"
  region= var.region
  vpc_cidr_block = var.vpc_cidr_block
  tag_name = join("-",[var.project_name,terraform.workspace,"vpc"])
}

module "public_subnet" {
  source = "../subnet"
  region= var.region
  vpc_id = module.vpc.vpc_id
  subnet_cidr_block = var.public_subnet_cidr_block
  tag_name = join("-",[var.project_name,terraform.workspace,"public_subnet"])
}

module "private_subnet" {
  source = "../subnet"
  region= var.region
  vpc_id = module.vpc.vpc_id
  subnet_cidr_block = var.private_subnet_cidr_block
  tag_name = join("-",[var.project_name,terraform.workspace,"private_subnet"])
}
