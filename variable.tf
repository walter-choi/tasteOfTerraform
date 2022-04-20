variable "main_region" {
  type = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  type = string
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  type = string
  default = "10.0.2.0/24"
}

variable "project_name" {
  type = string
  default = "pj-devops-terademo"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "public_window_machine_count" {
  type = number
  default = 1
}

variable "public_linux_machine_count" {
  type = number
  default = 2
}

variable "private_window_machine_count" {
  type = number
  default = 0
}

variable "private_linux_machine_count" {
  type = number
  default = 1
}

