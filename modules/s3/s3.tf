
resource "aws_s3_bucket" "s3_bucket" {
    bucket = "${var.env}-bucket"
    acl = "private"
}

output "s3_name" {
    value = aws_s3_bucket.s3_bucket.id
}
