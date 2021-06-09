resource "aws_lb_target_group" "webserver_tg" {
  name     = "${var.env}-webserver-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.default.id
  health_check {
    path    = "/"
    port    = 80
    matcher = "200"
  }
}
