resource "aws_s3_bucket" "assignment" {
  bucket = "ven-1-12-assignment-bucket"

  tags = {
    Name = "Ven bucket"
  }
}
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.assignment.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}