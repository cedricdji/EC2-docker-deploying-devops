terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# clé ssh
resource "aws_key_pair" "key" {
  key_name   = var.key_name
  public_key = var.path_key
}

resource "aws_instance" "docker_host" {
  ami           = var.ami
  instance_type = var.aws_instance_type
  key_name      = aws_key_pair.key.key_name
  tags = {
    Name = "docker_host"
  }
}