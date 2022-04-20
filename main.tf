variable "main_region" {
  type = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type = string
  default = "10.2.0.0/16"
}

variable "subnet_cidr" {
  type = string
  default = "10.2.1.0/24"
}

module "testproject" {
  source = "./modules/project"
  region = var.main_region
  vpc_cidr_block = var.vpc_cidr
  subnet_cidr_block = var.subnet_cidr
  window_machine_count = 1
  linux_machine_count = 0
  project_name = "test Project"
}


