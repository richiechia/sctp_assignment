resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
    tags = var.bucket_tags
}


resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
    bucket = aws_s3_bucket.bucket.id
    policy = data.aws_iam_policy_document.example.json
}