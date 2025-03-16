resource "aws_vpc" "ABC" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = var.vpc_tags
}

resource "aws_subnet" "ABC_SUBNET" {
  count                   = length(var.availabilityZones)
  vpc_id                  = aws_vpc.ABC.id
  cidr_block              = "10.0.${count.index}.0/24" # Each subnet will have a unique /24 block
  availability_zone       = var.availabilityZones[count.index]
  map_public_ip_on_launch = var.map_public_ip

  tags = var.vpc_tags
}

resource "aws_internet_gateway" "ABC_IGW" {
  vpc_id = aws_vpc.ABC.id

  tags = var.vpc_tags
}

resource "aws_route_table" "ABC_ROUTE_TABLE" {
  vpc_id = aws_vpc.ABC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ABC_IGW.id
  }

  tags = {
    Name        = "${var.project_name}_ROUTE_TABLE"
    Environment = var.environment
  }
}

resource "aws_route_table_association" "ABC_ROUTE_TABLE_ASSOCIATION" {
  count          = length(var.availabilityZones)
  subnet_id      = aws_subnet.ABC_SUBNET[count.index].id
  route_table_id = aws_route_table.ABC_ROUTE_TABLE.id
}