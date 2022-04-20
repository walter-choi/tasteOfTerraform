module "project" {
  source = "./modules/project"
  region = var.main_region
  vpc_cidr_block = var.vpc_cidr
  public_subnet_cidr_block = var.public_subnet_cidr
  private_subnet_cidr_block = var.private_subnet_cidr
  window_machine_count = 1
  linux_machine_count = 0
  project_name = var.project_name
}

