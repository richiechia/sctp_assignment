terraform {
  backend "s3" {
    bucket = "sctp-ce4-tfstate-bucket"
    key    = "richie-live-cloudfront.tfstate" #Remember to change this
    region = "ap-southeast-1"      #The region of your backend bucket
  }
}