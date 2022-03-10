provider "aws" {
  region = "ap-northeast-1"
}

locals {
  tags = {
    Owner       = "admin"
    Environment = "develop"
  }
}

module "example-vpc" {
  source = "../"

  vpc_name = "example-vpc-1"
  vpc_cidr = "192.168.0.0/24"
  tags     = local.tags
}