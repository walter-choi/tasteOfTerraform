provider "aws" {
  region = var.region
}

resource "aws_subnet" "this" {
  vpc_id = var.vpc_id
  cidr_block = var.subnet_cidr_block
  tags = {
    Name = var.tag_name
  }
}

