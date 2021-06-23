terraform {
  backend "s3" {
    bucket = "terraform-may-nurkyz"
    key    = "terraform.tfsate"
    region = "us-east-1"
    workspace_key_prefix = "session-11"
  }
}