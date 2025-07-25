resource "aws_s3_bucket" "artifact_bucket" {
  bucket        = var.bucket_name
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.artifact_bucket.id
  versioning_configuration { 
    status = "Enabled" 
    }
}
