resource "aws_internet_gateway" "in_gw" {
  vpc_id = aws_vpc.homework_vpc.id
  tags = {
    Name = "in_gw"
  }
}
resource "aws_nat_gateway" "nat_gw" {
  connectivity_type = "public"
  allocation_id     = aws_eip.eip_nat_gateway.id
  subnet_id         = aws_subnet.private_subnet1.id
  tags = {
    Name = "nat_gw"
  }
}
resource "aws_eip" "eip_nat_gateway" {
  vpc = true
}