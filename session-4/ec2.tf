resource "aws_instance" "main" {
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id]
  key_name               = var.key_name
  tags = {
    Name = var.env
  }
}

# Reference Named Values:
# 1. Resource = aws_security_group.main.id
# 2. Input variables = var.instance_type
# 3. Data Source = data.firstlabel.secondlabel.attribute
# 4. Local - ? 
# 5. Child MOdule - ?