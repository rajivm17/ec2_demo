terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
  }
  required_version = ">= 0.14"

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


resource "aws_instance" "newec2" {
  ami           = "ami-04db49c0fb2215364"
  instance_type = "t2.micro"
}
