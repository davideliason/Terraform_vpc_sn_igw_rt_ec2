terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# configure the aws provider
provider "aws" {
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "vscodeaws"
  region                   = "us-west-2"
}

module "vpc" {
  source                   = "./modules/vpc"
  cidr_block               = "10.0.0.0/16"
  public_subnet_cidr_block = "10.0.0.0/24"

  tags = {
    Name = "my-vpc"
  }
}


module "ec2_instance" {
  source = "./modules/ec2"

  subnet_id     = module.vpc.public_subnet_id
  ami           = "ami-07d9cf938edb0739b"
  instance_type = "t2.micro"

}
