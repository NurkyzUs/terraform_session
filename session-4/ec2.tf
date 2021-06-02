resource "aws_instance" "first_ec2" {
  ami                    = data.aws_ami.amazon_linux_2.id                        
  vpc_security_group_ids = [aws_security_group.first_sg.id] 
  instance_type = var.instance_type
  user_data = file("userdata.sh")
  tags = {
    Name = var.env
  }
}

