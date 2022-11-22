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


resource "aws_instance" "ubuntu1" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance1"
  }
}


resource "aws_instance" "ubuntu2" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance2"
  }
}


resource "aws_instance" "ubuntu3" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance3"
  }
}


resource "aws_instance" "ubuntu4" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance4"
  }
}


resource "aws_instance" "ubuntu5" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance5"
  }
}


resource "aws_instance" "ubuntu6" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance6"
  }
}


resource "aws_instance" "ubuntu7" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance7"
  }
}


resource "aws_instance" "ubuntu8" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance8"
  }
}



resource "aws_instance" "ubuntu9" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance9"
  }
}


resource "aws_instance" "ubuntu10" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance10"
  }
}


resource "aws_instance" "ubuntu11" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance11"
  }
}


resource "aws_instance" "ubuntu12" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance12"
  }
}


resource "aws_instance" "ubuntu13" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance13"
  }
}


resource "aws_instance" "ubuntu14" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance14"
  }
}


resource "aws_instance" "ubuntu15" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance15"
  }
}


resource "aws_instance" "ubuntu16" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = "instance16"
  }
}


