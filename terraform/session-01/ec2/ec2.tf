resource "aws_instance" "web"{
    ami = var.ami-id #ami
    instance_type = var.instance-type
    vpc_security_group_ids = [ aws_security_group.roboshop-all.id ]
    tags = var.tags
}

resource "aws_security_group" "roboshop-all" {
  name        = var.sg-name #security group name
  description = var.sg-description
  #vpc_id      = aws_vpc.main.id
  ingress {
    description="allow all"
    from_port        = var.sg-inbound-from-port
    to_port          = var.sg-inbound-to-port
    protocol         = "tcp"
    cidr_blocks      = var.cidr-blocks
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr-blocks
    ipv6_cidr_blocks = ["::/0"]
  }
    tags = {
    Name = "roboshop-all-aws" #name
  }
}
