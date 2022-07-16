resource "aws_instance" "homework_ec2" {
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.sg_homework.id]
  key_name               = var.key_name
  subnet_id              = aws_subnet.public_subnet1.id
  tags = {
    Name = var.env
  }
}
