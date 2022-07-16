resource "aws_vpc" "homework_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "homework_vpc"
  }
}

