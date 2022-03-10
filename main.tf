locals {
  module_version = "v0.1.0"
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = merge(
    {
      Name = var.vpc_name,
      "module_version" = local.module_version
    },
    var.tags,
  )
}