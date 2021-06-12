terraform {
  backend "s3" {
    bucket = "terraform-may-nurkyz"
    key    = "session-7/backend.tfsate"
    region = "us-east-1"
  }
}