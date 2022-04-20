provider "aws" {
  region = var.region
}

resource "aws_network_interface" "this" {
  subnet_id   = var.subnet_id
}

resource "aws_instance" "this" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.tag_name
  } 
}

