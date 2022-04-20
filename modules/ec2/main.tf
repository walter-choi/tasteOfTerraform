provider "aws" {
  region = var.region
}

resource "aws_network_interface" "this" {
  count = var.machine_count
  subnet_id   = var.subnet_id
}

resource "aws_instance" "this" {
  count = var.machine_count
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name = join("-",[var.tag_name,count.index + 1])
  } 
}

