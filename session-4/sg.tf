resource "aws_security_group" "first_sg" {        
  name        = "session-3"                       
  description = "This is for testing"

  ingress {                                     
    description = "this is rule for session-3"  # Security group is stateful, meaning that, whatever port you define in ingress will apply to egress
    from_port   = 22                             
    to_port     = 22                            
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {                                     
    description = "this is HTTP"  
    from_port   = 80                            
    to_port     = 80                            
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"                         # -1 means ALL protocols, TCP, UDP, ICMP
    cidr_blocks = ["0.0.0.0/0"]
  }
}