provider "aws" {
  region = var.region
}

data "aws_ami" "window" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["679593333241"] # Amazon Web Service
}

module "window_machine" {
  source  = "../ec2"
  machine_count = var.machine_count
  region = var.region
  ami = data.aws_ami.window.id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  tag_name = var.tag_name
}
