resource "aws_alb" "alb" {
  name               = var.project_name
  load_balancer_type = "application"
  subnets            = [aws_subnet.subnet_1.id, aws_subnet.subnet_2.id]
  security_groups    = [aws_security_group.alb.id]

  tags = {
    Name = var.project_name
  }
}

resource "aws_alb_target_group" "alb_target_group" {
  name        = var.project_name
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.vpc.id
  target_type = "ip"
  #  health_check {
  #   path = "/health"
  #   port = 80
  #   healthy_threshold = 6
  #   unhealthy_threshold = 2
  #   timeout = 2
  #   interval = 5
  #   matcher = "200"  # has to be HTTP 200 or fails
  # }
}

resource "aws_alb_listener" "alb_listener" {
  load_balancer_arn = aws_alb.alb.arn
  port              = 8080
  protocol          = "HTTP"
  default_action {
    target_group_arn = aws_alb_target_group.alb_target_group.arn
    type             = "forward"
  }
}
