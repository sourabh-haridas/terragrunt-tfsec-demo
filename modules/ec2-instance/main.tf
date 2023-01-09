terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.49"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-011899242bb902164"
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}