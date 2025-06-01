output "fetch_ami_id"{
   value=data.aws_ami.web.id
}
output "fetch_amazon_ami_id"{
   value=data.aws_ami.aws-linux-2.id
}
output "fetch_default_vpc"{
  value=data.aws_vpc.default.id
}
