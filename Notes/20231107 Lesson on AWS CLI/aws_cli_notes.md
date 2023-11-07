# Notes

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

aws configure --profile <profile_name>
aws s3 ls --profile <profile_name>

https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html

Pre-configuration.
Location of the credentials and config files are in

Windows: ./Users/{username}/.aws/credentials or configs
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
