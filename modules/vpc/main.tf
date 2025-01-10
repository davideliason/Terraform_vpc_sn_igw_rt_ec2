resource "aws_vpc" "my-vpc" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  tags = var.tags
}

resource "aws_subnet" "public-subnet" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.public_subnet_cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = var.tags
}

resource "aws_subnet" "private-subnet" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.private_subnet_cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = false

  tags = var.tags
}

# ouptut vars
output "public_subnet_id" {
  value = aws_subnet.public-subnet.id

}

output "private_subnet_id" {
  value = aws_subnet.private-subnet.id
}


