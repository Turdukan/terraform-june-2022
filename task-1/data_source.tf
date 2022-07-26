data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

#######################################################

data "aws_vpc" "default" {
  default = true
}
######################################################

data "aws_subnet" "default_subnet" {
  vpc_id = data.aws_vpc.default.id
  id     = var.subnet_id
}

########################################
data "aws_security_group" "default" {
   vpc_id = data.aws_vpc.default.id
   id = var.security_group_id
}
