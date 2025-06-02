resource "aws_instance" "web"{
    ami = data.aws_ami.web.id #ami
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.dynamic_sg.id ]
    tags = {
        Name="Dynamic"
    }
}

