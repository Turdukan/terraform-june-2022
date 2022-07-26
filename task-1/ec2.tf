resource "aws_instance" "web" {
  ami             = data.aws_ami.amazon_linux_2.id
  instance_type   = var.instance_type
  security_groups = [data.aws_security_group.default.id]
  subnet_id       = data.aws_subnet.default_subnet.id
  tags = {
    Name        = "web-instance"
    Environment = var.env
  }
}
