variable "region" {
  type = string
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  type = string
  default = "10.0.1.0/24"
}

variable "window_machine_count" {
  type = number
  default = 0
}

variable "linux_machine_count" {
  type = number
  default = 0
}

variable "project_name" {
  type = string
  default = "pj-devops-terraformdefault"
}

