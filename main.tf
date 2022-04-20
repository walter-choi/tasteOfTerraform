module "project" {
  source = "./modules/project"
  region = var.main_region
  vpc_cidr_block = var.vpc_cidr
  subnet_cidr_block = var.subnet_cidr
  window_machine_count = 1
  linux_machine_count = 0
  project_name = "testProject"
}

