resource "aws_lb" "hw_lb" {
  name               = "${var.env}-app-lb"
  internal           = false
  load_balancer_type = "application"
  ip_address_type    = "ipv4"
  security_groups    = [aws_security_group.lb_sg.id]
  subnets = [ var.public_subnet1, var.public_subnet2]
  tags = {
    Name = "app-lb"
    Environment = var.env
  }
}

resource "aws_alb_listener" "listeners" {
  load_balancer_arn = aws_lb.hw_lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = aws_lb_target_group.hw_tg.arn
    type             = "forward"
  }
}

# 1. Name updates, name gotta be environment specific
# 2. Add tags, Name=Value, ENV=env
