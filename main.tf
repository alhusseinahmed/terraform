terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region = "eu-central-1"
}


resource "aws_instance" "ec2-instance" {
  ami           = "ami-098c93bd9d119c051"
  instance_type = "t2.micro"

  tags = {
    Name = "First-Instance"
  }
}


