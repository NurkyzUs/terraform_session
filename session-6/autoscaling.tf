resource "aws_autoscaling_group" "web_asg" {
  name             = "${var.env}-web-asg"
  max_size         = 5
  min_size         = 3
  desired_capacity = 3
  // health_check_grace_period = 300
  // health_check_type = "ELB"
  launch_configuration = aws_launch_configuration.web.name
  vpc_zone_identifier  = data.aws_subnet_ids.default.ids

  instance_refresh {
    strategy = "Rolling"
    preferences {
      min_healthy_percentage = 50
    }
  }
}