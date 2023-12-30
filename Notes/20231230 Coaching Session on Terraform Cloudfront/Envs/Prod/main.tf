module "cloudfront" {
    source = "../../Modules/Cloudfront-s3"

    bucket_name = "richie-tf-live-bucket"
    bucket_tags = {
      "Name" : "Richie Bucket Live"
      "Environment" : "Live"
    }

    cloudfront_name = "Richie-oac-live"
}

