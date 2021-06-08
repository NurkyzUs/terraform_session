terraform {
  backend "s3" {
    bucket = "terraform-may-nurkyz"
    key    = "session-6/terraform.tfsate"
    region = "us-east-1"
  }
}