provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "s3bucket-gitaction-2026"  # MUST be globally unique and lowercase done

  tags = {
    Environment = "Lab"
  }
}

# # ACL is now a separate resource in newer providers
# resource "aws_s3_bucket_acl" "example" {
#   bucket = aws_s3_bucket.example_bucket.id
#   acl    = "private"
# }