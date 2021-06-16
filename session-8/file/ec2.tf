resource "aws_instance" "first_ec2" {
  count = 1
  ami                       = data.aws_ami.amazon_linux_2.id                        
  vpc_security_group_ids    = [aws_security_group.first_sg.id] 
  instance_type             = var.instance_type
  key_name = aws_key_pair.terraform-key.key_name
  tags = {
    Name = "File-Provisioner-Instance"
  }

### file provisioner

provisioner "file" {
  source = "/tmp/index.html"
  destination = "/tmp/index.html"

connection {
  type        = "ssh"
  user        = "ec2-user"
  host        = self.public_ip
  private_key = file("~/.ssh/id_rsa")
  }
}

### remote exec

provisioner "remote-exec" {
  inline = [
    "sudo yum install httpd -y" ,        
    "sudo systemctl start httpd" ,
    "sudo systemctl enable httpd" ,
    "sudo cp /tmp/index.html /var/www/html/index.html" ,
    "sudo touch test.txt"
  ]
 }
}

### key pair for instance
resource "aws_key_pair" "terraform-key" {
  key_name = "terraform-server"
  public_key = file("~/.ssh/id_rsa.pub")
}

