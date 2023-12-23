

resource "aws_instance" "name" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t2.micro"
  subnet_id                   = data.aws_subnets.public.ids[1]
  associate_public_ip_address = true
  iam_instance_profile        = aws_iam_instance_profile.instance_profile.name

  user_data                   = <<EOF
#!/bin/bash
yum install -y httpd
systemctl enable httpd
systemctl start httpd
EOF
  user_data_replace_on_change = true # this forces instance to be recreated upon update of user data contents


  tags = {
    Name = "richie-tf-20231223"
  }
}

# Only need to write this for ec2 instance profile
resource "aws_iam_instance_profile" "instance_profile" {
  name = "richie-ec2-tf-ssm-profile"
  role = aws_iam_role.instance.name
}

resource "aws_iam_role" "instance" {
  name               = "richie-ec2-tf-ssm-role"
  path               = "/system/"
  assume_role_policy = data.aws_iam_policy_document.instance_assume_role_policy.json
}

resource "aws_iam_role_policy_attachment" "example-attach" {
  role       = aws_iam_role.instance.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}