resource "aws_security_group" "lb_sg" { # terraform resource name
  name        = "${var.env}-lb-sg"
  description = "This is a sg for my lb"
  vpc_id = var.vpc_id
  tags = {
    Name = "lb-sg"
    Environment = var.env
  }
}


resource "aws_security_group_rule" "lb_ingress_rule" {
  count             = length(var.lb_ingress_ports)
  type              = "ingress"
  from_port         = element(var.lb_ingress_ports, count.index)
  to_port           = element(var.lb_ingress_ports, count.index)
  protocol          = "tcp"
  cidr_blocks       = [var.cidr_blocks]
  security_group_id = aws_security_group.lb_sg.id
}


resource "aws_security_group_rule" "lb_egress_rule" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = [var.cidr_blocks]
  security_group_id = aws_security_group.lb_sg.id
}

################################ SG - EC2 ############################################
resource "aws_security_group" "main" { # terraform resource name
  name        = "${var.env}-ec2-sg"
  description = "This is a sg for my EC2 "
  vpc_id = var.vpc_id
  tags = {
    Name = "ec2-sg"
    Environment = var.env
  }
}


resource "aws_security_group_rule" "ingress_rule" {
  count             = length(var.ingress_ports)
  type              = "ingress"
  from_port         = element(var.ingress_ports, count.index)
  to_port           = element(var.ingress_ports, count.index)
  protocol          = "tcp"
  cidr_blocks       = [var.cidr_blocks]
  security_group_id = aws_security_group.main.id
}


resource "aws_security_group_rule" "egress_rule" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = [var.cidr_blocks]
  security_group_id = aws_security_group.main.id
}



# 1. Name updates, name gotta be environment specific
# 2. Add tags, Name=Value, ENV=env
# 3. CIDR blocks need to be variables
