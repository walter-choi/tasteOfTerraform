variable "region" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "subnet_cidr_block" {
  type = string
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
}

