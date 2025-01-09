resource "aws_vpc" "my-vpc" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames
}
