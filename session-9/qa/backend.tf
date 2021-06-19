terraform {
  backend "s3" {
    bucket = "terraform-may-nurkyz"
    key    = "session-9/qa/terraform.tfsate"
    region = "us-east-1"
  }
}