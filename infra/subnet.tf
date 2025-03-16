resource "aws_subnet" "ABC_SUBNET" {
  count                   = length(var.availabilityZones)
  vpc_id                  = aws_vpc.ABC.id
  cidr_block              = "10.0.${count.index}.0/24"
  availability_zone       = var.availabilityZones[count.index]
  map_public_ip_on_launch = var.map_public_ip

  tags = var.vpc_tags
}
