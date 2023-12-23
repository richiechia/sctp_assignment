output "ami_id" {
  value = data.aws_ami.amazon_linux.id
}

output "subnet_ids" {
  value = data.aws_subnets.public.ids
}


output "subnet_ec2_is_on" {
  value = aws_instance.name.subnet_id
}

output "iam_role" {
  value = aws_instance.name.iam_instance_profile
}