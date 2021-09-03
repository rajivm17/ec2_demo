terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

  backend "remote" {
    organization = "rajiv-terraformcloud"

    workspaces {
      name = "gh-action-demo"
    }
  }
}


provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "newec3" {
  ami           = "ami-04db49c0fb2215364"
  instance_type = "t2.micro"
}
