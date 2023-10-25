terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "mi_servidor" {
  ami           = "ami-0dbc3d7bc646e8516"
  instance_type = "t2.micro"

  tags = {
    Name = "servidor_01"
  }
}