resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.homework_vpc.id
  tags = {
    Name = "public_route_table"
  }
}
resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.homework_vpc.id
  tags = {
    Name = "private_route_table"
  }
}
resource "aws_route" "route_ig" {
    route_table_id         = aws_route_table.public_route_table.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = aws_internet_gateway.in_gw.id
}
resource "aws_route" "route_ng" {
    route_table_id         = aws_route_table.private_route_table.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = aws_nat_gateway.nat_gw.id
}
