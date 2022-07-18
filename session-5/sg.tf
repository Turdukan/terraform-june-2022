resource "aws_security_group" "main" { # terraform resource name
  name        = "Security group"       #aws resource name 
  description = "This is a sg for my EC2"
}

resource "aws_security_group_rule" "ingress_rule" {
  count             = length (var.ingress_ports)
  type              = "ingress"
  from_port         = element(var.ingress_ports, count.index)
  to_port           = element(var.ingress_ports, count.index)
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id
}
# for_each
# dynamic resource creation

resource "aws_security_group_rule" "egress_rule" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id
}