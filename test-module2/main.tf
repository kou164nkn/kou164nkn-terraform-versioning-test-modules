locals {
  module_version = "v0.6.0"
}

resource "aws_vpc" "manual_setting" {
  count              = var.manual_setting_flag ? 1 : 0
  cidr_block         = var.vpc_cidr
  enable_dns_support = var.enable_dns_support

  tags = merge(
    {
      Name = "${var.vpc_name}-manual",
      "module_version" = local.module_version
    },
    var.tags,
  )

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

resource "aws_vpc" "iac_setting" {
  count              = var.manual_setting_flag ? 0 : 1
  cidr_block         = var.vpc_cidr
  enable_dns_support = var.enable_dns_support

  tags = merge(
    {
      Name = "$var.vpc_name}-IaC",
      "module_version" = local.module_version
    },
    var.tags,
  )
}
