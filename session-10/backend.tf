terraform {
  backend "s3" {
    bucket = "terraform-may-nurkyz"
    key    = "session-10/terraform.tfsate"
    region = "us-east-1"
  }
}