terraform {
    backend "s3" {
        bucket = "sctp-ce4-tfstate-bucket"
        key = "richie-prd-ec2.tfstate"
        region = "ap-southeast-1"
    }
}