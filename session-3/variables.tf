# This is a file where you will be putting all your INPUT variables or PARAMETERS

variable "ami" {                  
   type = string
   default = "ami-0d5eff06f840b45e9"   
   description = "This is AMI id for EC2 instance, Accepted Processor type 'x86'"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "This is an instance type for EC2"
}

variable "env" {
    type = string
    default = "qa"
    description = "This is a variable for environments"
}
