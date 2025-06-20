# resource "aws_vpc" "main" {
#   cidr_block = "172.31.0.0/16"
# }

# resource "aws_subnet" "public" {
#   vpc_id = var.vpc_id
#   cidr_block              = "172.31.32.0/20"
#   map_public_ip_on_launch = true
# }

# resource "aws_subnet" "private" {
#   vpc_id = var.vpc_id
#   cidr_block = "172.31.16.0/20"
# }

# resource "aws_internet_gateway" "igw" {
#   vpc_id = var.vpc_id
# }

# resource "aws_route_table" "public" {
#   vpc_id = var.vpc_id
#
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.igw.id
#   }
# }

# resource "aws_route_table_association" "public_assoc" {
#   subnet_id      = aws_subnet.public.id
#   route_table_id = aws_route_table.public.id
# }
