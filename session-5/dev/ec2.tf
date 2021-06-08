resource "aws_instance" "first_ec2" {
  count = 3
  ami                       = data.aws_ami.amazon_linux_2.id                        
  vpc_security_group_ids    = [aws_security_group.first_sg.id] 
  instance_type             = var.instance_type
  user_data                 = data.template_file.user_data.rendered
  tags = {
    Name = "Hello from ${var.env} environment"
    Name2 = format("Hello from %s environment", var.env)
  }
}

