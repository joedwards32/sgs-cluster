# VPC

resource "aws_vpc" "sgs" {
  # Leave space for multiple AZ /24 subnets
  cidr_block           = "172.16.0.0/22" 
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "SGS ${var.name}"
    Cluster = aws_ecs_cluster.sgs.id
  }
}

# Subnet

resource "aws_subnet" "sgs_public" {
  vpc_id = aws_vpc.sgs.id
  cidr_block = "172.16.0.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "SGS ${var.name}"
    Cluster = aws_ecs_cluster.sgs.id
  }
}

# Internet Gateway

resource "aws_internet_gateway" "sgs" {}

resource "aws_internet_gateway_attachment" "sgs_public" {
  internet_gateway_id = aws_internet_gateway.sgs.id
  vpc_id              = aws_vpc.sgs.id
}

resource "aws_default_route_table" "example" {
  default_route_table_id = aws_vpc.sgs.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sgs.id
  }
}
