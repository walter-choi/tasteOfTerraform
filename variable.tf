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

