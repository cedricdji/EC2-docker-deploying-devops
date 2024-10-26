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
  profile = var.aws_profile
}

resource "aws_instance" "docker_host" {
  ami = var.ami
  instance_type = var.aws_instance_type
    tags = {
        Name = "docker_host"
    }
}