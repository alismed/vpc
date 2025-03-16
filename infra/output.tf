output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.ABC.id
}

output "vpc_cidr" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.ABC.cidr_block
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = aws_subnet.ABC_SUBNET[*].id
}

output "route_table_ids" {
  description = "The IDs of the route tables"
  value       = aws_route_table.ABC_ROUTE_TABLE.*.id
}

output "internet_gateway_id" {
  description = "The ID of the internet gateway"
  value       = aws_internet_gateway.ABC_IGW.id
}

output "vpc_name" {
  description = "The name of the VPC"
  value       = aws_vpc.ABC.tags["Name"]
}

output "subnet_names" {
  description = "The names of the subnets"
  value       = [for subnet in aws_subnet.ABC_SUBNET : subnet.tags["Name"]]
}

output "subnet_cidrs" {
  description = "The CIDR blocks of the subnets"
  value       = aws_subnet.ABC_SUBNET[*].cidr_block
}