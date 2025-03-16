resource "aws_vpc" "ABC" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = var.vpc_tags
}
