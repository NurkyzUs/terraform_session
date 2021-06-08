terraform {
  backend "s3" {
    bucket = "terraform-may-nurkyz"
    key    = "session-5/qa/terraform.tfsate"
    region = "us-east-1"
  }
}