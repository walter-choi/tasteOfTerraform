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

module "public_linux" {
  source = "../linux_machine"
  region = var.region
  machine_count = var.public_linux_machine_count
  subnet_id = module.public_subnet.subnet_id
  instance_type = var.instance_type
  tag_name = join("-",[var.project_name,terraform.workspace,"public-linux"])
}

module "public_window" {
  source = "../window_machine"
  region = var.region
  machine_count = var.public_window_machine_count
  subnet_id = module.public_subnet.subnet_id
  instance_type = var.instance_type
  tag_name = join("-",[var.project_name,terraform.workspace,"public-window"])
}

module "private_linux" {
  source = "../linux_machine"
  region = var.region
  machine_count = var.private_linux_machine_count
  subnet_id = module.private_subnet.subnet_id
  instance_type = var.instance_type
  tag_name = join("-",[var.project_name,terraform.workspace,"private-linux"])
}

module "private_window" {
  source = "../window_machine"
  region = var.region
  machine_count = var.private_window_machine_count
  subnet_id = module.private_subnet.subnet_id
  instance_type = var.instance_type
  tag_name = join("-",[var.project_name,terraform.workspace,"private-window"])
}




