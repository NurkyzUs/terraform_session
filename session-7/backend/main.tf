resource "aws_db_instance" "rds_instance" {
  allocated_storage         = 10
  storage_type              = "gp2"
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t2.micro"
  identifier                = "${var.env}-db-instance"
  name                      = "my_db"
  username                  = "admin"
  password                  = random_password.password.result
  skip_final_snapshot       = var.snapshot
  final_snapshot_identifier = var.snapshot == true ? null : "${var.env}-snapshot"
  publicly_accessible       = var.env == "dev" ? true : false
  vpc_security_group_ids    = [aws_security_group.rds_sg.id]
}

resource "aws_security_group" "rds_sg" {
  name        = "${var.env}-db-sg"
  description = "ALlow MySQL"

  ingress {
    description = "This is for my MySQL"
    from_port   = "3306"
    to_port     = "3306"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All ports and protocols"
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}