terraform {
  backend "s3" {
    bucket = "terraform-may-nurkyz"
    key    = "session-8/file/terraform.tfsate"
    region = "us-east-1"
  }
}