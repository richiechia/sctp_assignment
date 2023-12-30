module "cloudfront" {
    source = "./Modules/Cloudfront-s3"

    bucket_name = "richie-tf-test-bucket"
    bucket_tags = {
      "Name" : "Richie Bucket"
      "Environment" : "Dev"
    }

    cloudfront_name = "Richie-oac"
}