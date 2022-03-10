locals {
  module_version = "v0.2.0"
}

resource "aws_vpc" "main" {
  cidr_block         = var.vpc_cidr
  enable_dns_support = var.enable_dns_support

  tags = merge(
    {
      Name = var.vpc_name,
      "module_version" = local.module_version
    },
    var.tags,
  )
}