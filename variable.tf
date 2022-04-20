variable "main_region" {
  type = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidr" {
  type = string
}

variable "private_subnet_cidr" {
  type = string
}

variable "project_name" {
  type = string
}
