resource "aws_s3_bucket" "tf_state_storage" {
  bucket = var.bucket
}

resource "aws_s3_bucket_acl" "acl_tf_state_storage" {
  bucket = aws_s3_bucket.tf_state_storage.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning_tf_state_storage" {
  bucket = aws_s3_bucket.tf_state_storage.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "tf_state_lock" {
  name           = var.dynamodb_table
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}