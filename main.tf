provider "aws" {
  region = var.region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  token = var.aws_session_token
  
#   assume_role {
#     role_arn     = "arn:aws:iam::651142589551:role/aws_jarrett.spiker_test-developer"
#   }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "ubuntu" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
