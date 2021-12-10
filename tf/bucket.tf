provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket_prefix = "mirth-"
  acl    = "private"

  tags = {
    Name        = "mirth-hackathon-bucket"
    Environment = "hackathon"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.bucket.id
}
