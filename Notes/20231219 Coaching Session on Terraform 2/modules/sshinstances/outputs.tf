output "ssh_public_ip" {
  value = aws_instance.ssh.public_ip
}

output "ami_id" {
  value = data.aws_ami.latest_amazon_linux_2.id
}

output "ami_arn" {
  value = data.aws_ami.latest_amazon_linux_2.arn
}

output "subnets" {
  value = data.aws_subnets.public.ids
}