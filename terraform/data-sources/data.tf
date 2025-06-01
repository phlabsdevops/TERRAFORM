# Find the latest available AMI that is tagged with Component = web
data "aws_ami" "web" {
  owners=["973714476881"]
  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  most_recent = true
}

data "aws_ami" "aws-linux-2" {
  owners=["137112412989"]
  filter {
    name   = "name"
    values = ["al2023-ami-2023.7.20250512.0-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  most_recent = true
}

data "aws_vpc" "default" {
 default=true
}
