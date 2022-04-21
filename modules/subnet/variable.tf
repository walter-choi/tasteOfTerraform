
variable "region" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_cidr_block" {
  type = string
}

variable "tag_name" {
  type = string
}
variable "dependency" {
  type = list
}
