terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "web" {
  ami           = "ami-05d1dd0175a5c3b99"
  instance_type = "t3.micro"
  subnet_id = "	subnet-0e89cf792598a2ba4"

  tags = {
    Name = "richie-tf-instance"
  }
}


resource "aws_instance" "web2" {
  ami           = "ami-05d1dd0175a5c3b99"
  instance_type = "t3.micro"
  subnet_id = "	subnet-0e89cf792598a2ba4"
  key_name = "richie_linux_key_pair_windows"

  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "richie-lol-ez"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "richie-allow-ssh-lol"
  description = "Allow SSH inbound traffic"
  vpc_id      = "vpc-0582d885a3bc6c51b"

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    # cidr_blocks      = [aws_vpc.main.cidr_block]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "richie-allow-ssh"
  }
}




