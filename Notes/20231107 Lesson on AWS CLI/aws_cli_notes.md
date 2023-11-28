# Notes
To get the access and secret key, you'll have to create an IAM user on the IAM platform. FOllowing which, you can generate an access key and secret key.

aws configure --profile <profile_name>
aws s3 ls --profile <profile_name>

https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html

Pre-configuration.
Location of the credentials and config files are in

Windows: ./Users/{username}/.aws/credentials or configs

Linux: ~/.aws/config and ~/.aws/credentials

Within credentials

[default]

[personal]

Within config

[default]

region = ap-southeast-1
output = json

[profile personal]
region = ap-southeast-1
output = json

| CREDENTIALS | CONFIG | 
| ------------| -------|
|[default] | [profile personal] |
|----------| ------------|


aws ec2 describe-instances --instance-id i-015aebd56e0919e04 --query Reservations[].Instances[].KeyName

aws ec2 describe-instances --query Reservations[].Instances[?InstanceId=='i-081234966d0aaf9b4'].KeyName[]


# Terraform Installation
https://developer.hashicorp.com/terraform/downloads

Windows: Use chocolately, which is a windows package manager

Linux: Install using the command terminal