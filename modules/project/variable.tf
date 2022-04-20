variable "region" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "private_subnet_cidr_block" {
  type = string
}

variable "public_subnet_cidr_block" {
  type = string
}


variable "public_window_machine_count" {
  type = number
  default = 0
}

variable "public_linux_machine_count" {
  type = number
  default = 0
}

variable "private_window_machine_count" {
  type = number
  default = 0
}

variable "private_linux_machine_count" {
  type = number
  default = 0
}
variable "project_name" {
  type = string
}

variable "instance_type"{
  type = string
}
