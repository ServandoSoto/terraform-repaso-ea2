terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source              = "github.com/ServandoSoto/terraform-vpc-module?ref=v1.0.0"
  vpc_cidr            = var.vpc_cidr
  vpc_name            = var.vpc_name
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  az                  = var.az
  security_group_name = var.security_group_name
}

module "ec2" {
  source            = "github.com/ServandoSoto/terraform-ec2-module?ref=v1.0.0"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  instance_name     = var.instance_name
  environment       = var.environment
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.vpc.security_group_id
}

module "s3" {
  source       = "github.com/ServandoSoto/terraform-s3-module?ref=v1.0.0"
  bucket_name  = var.bucket_name
  environment  = var.environment
}