resource "aws_lb_listener" "jylee_albli" {
    load_balancer_arn = aws_lb.jylee-alb.arn
    port = 80
    protocol = "HTTP"

    default_action {
        type = "forward"
        target_group_arn = aws_lb_target_group.jylee-albtg.arn
    }
}