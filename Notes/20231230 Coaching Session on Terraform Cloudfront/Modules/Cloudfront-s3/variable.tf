variable "bucket_name" {
    description = "The name of the S3 bucket"
    type = string
}

variable "bucket_tags" {
    description = "A map of tags to assign to the s3 bucket"
    type = map(string)
    default = {}
}

variable "cloudfront_name" {
    description = "The name of the cloudfront"
    type = "string"
}