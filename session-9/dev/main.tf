module "dev_ec2" {
  source = "../../modules/ec2"

  ami           = "ami-0aeeebd8d2ab47354"
  instance_type = "t2.micro"
  env           = "dev"
}