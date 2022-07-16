resource "aws_security_group" "sg_homework" {
  name        = "Security group"
  description = "This is a sg for my EC2"
  vpc_id      = aws_vpc.homework_vpc.id
    ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
