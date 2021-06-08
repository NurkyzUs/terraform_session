resource "aws_security_group" "first_sg" {        
  name        = "session-5"                       
  description = "This is for testing"

}

resource "aws_security_group_rule" "ingress_sg" {
count = 5
type "ingress"
protocol = "tcp"
security_group_id = aws_security_group.first_sg.id
from_port = element(var.sg_tcp_ports, count.index)
to_port = element(var.sg_tcp_ports,count.index)
cidr_blocks = [element(var.sg_tcp_ports_cidr, count.index)]
}