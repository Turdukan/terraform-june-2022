resource "aws_instance" "main" {
  count                  = 1
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id]
  key_name               = aws_key_pair.terraform_server_key.key_name
  tags = {
    Name = var.env
  }
  provisioner "file" {
    source      = "/home/ec2-user/terraform-june-2022/session-8/index.html" #where is your file
    destination = "/tmp/index.html"                                         # where to copy file on remote machine

    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
  provisioner "remote-exec" {
    inline = [
      " sudo yum install httpd -y",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "sudo cp /tmp/index.html /var/www/html/index.html"
    ]
    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
}

resource "null_resource" "local_script" {
  provisioner "local-exec" {
    command = "touch /tmp/test.txt"
  }
}
resource "aws_key_pair" "terraform_server_key" {
  key_name   = "Terraform-server-key"
  public_key = file("~/.ssh/id_rsa.pub")
}