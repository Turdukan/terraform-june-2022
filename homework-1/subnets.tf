resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.homework_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-west-2a"
  tags = {
    Name = "public_subnet1"
  }
}
resource "aws_subnet" "public_subnet2" {
  vpc_id                  = aws_vpc.homework_vpc.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-west-2b"
  tags = {
    Name = "public_subnet2"
  }
}
resource "aws_subnet" "public_subnet3" {
  vpc_id                  = aws_vpc.homework_vpc.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-west-2c"
  tags = {
    Name = "public_subnet3"
  }
}
resource "aws_subnet" "private_subnet1" {
  vpc_id     = aws_vpc.homework_vpc.id
  availability_zone       = "us-west-2a"
  cidr_block = "10.0.11.0/24"
  tags = {
    Name = "private_subnet1"
  }
}
resource "aws_subnet" "private_subnet2" {
  vpc_id     = aws_vpc.homework_vpc.id
  availability_zone       = "us-west-2b"
  cidr_block = "10.0.12.0/24"
  tags = {
    Name = "private_subnet2"
  }
}
resource "aws_subnet" "private_subnet3" {
  vpc_id     = aws_vpc.homework_vpc.id
  availability_zone       = "us-west-2c"
  cidr_block = "10.0.13.0/24"
  tags = {
    Name = "private_subnet3"
  }
}

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public_route_table.id
}
resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.public_route_table.id
}
resource "aws_route_table_association" "public3" {
  subnet_id      = aws_subnet.public_subnet3.id
  route_table_id = aws_route_table.public_route_table.id
}
resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.private_route_table.id
}
resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.private_route_table.id
}
resource "aws_route_table_association" "private3" {
  subnet_id      = aws_subnet.private_subnet3.id
  route_table_id = aws_route_table.private_route_table.id
}