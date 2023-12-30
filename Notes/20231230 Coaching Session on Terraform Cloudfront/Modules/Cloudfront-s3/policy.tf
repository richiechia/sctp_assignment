data "aws_iam_policy_document" "example" {

  statement {
    sid = "AllowCloudFrontServicePrincipal"
    actions = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.bucket.arn}/*"]

    principals {
      type = "Service"
      identifiers = ["cloudfront.amazonaws.com"]
    }

    condition {
        test = "ForAnyValue:StringEquals"
        variable = "AWS:SourceARN"
        values = [aws_cloudfront_distribution.s3_distribution.arn]
    }
  }
}
