data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

data "template_file" "user_data" {
  template = file("userdata.sh")
  vars = {
    environment = var.env
  }
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "default" {
  vpc_id = data.aws_vpc.default.id
}

data "terraform_remote_state" "rds_instance" {
  backend = "s3"
  config = {
    bucket = "terraform-may-nurkyz"
    key = "session-7/backend.tfstate"
    region = "us-east-1"
  }
}