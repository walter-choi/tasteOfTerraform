module "project" {
  source = "./modules/project"
  region = var.main_region
  vpc_cidr_block = var.vpc_cidr
  public_subnet_cidr_block = var.public_subnet_cidr
  private_subnet_cidr_block = var.private_subnet_cidr
  public_linux_machine_count = var.public_linux_machine_count
  public_window_machine_count = var.public_window_machine_count
  private_linux_machine_count = var.private_linux_machine_count
  private_window_machine_count = var.private_window_machine_count
  project_name = var.project_name
  instance_type = var.instance_type
}

