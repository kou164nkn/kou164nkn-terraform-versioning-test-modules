provider "aws" {
  region = "ap-northeast-1"
}

locals {
  tags = {
    Owner       = "admin"
    Environment = "develop"
  }
}

module "manual_tag_setting" {
  source = "../"

  manual_setting_flag = true
  vpc_name            = "example-vpc-1"
  vpc_cidr            = "192.168.0.0/24"
  enable_dns_support  = false
  tags                = local.tags
}
