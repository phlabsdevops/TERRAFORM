resource "aws_instance" "web"{
    count=11
    ami = var.ami-id #ami
    instance_type = var.instance-type
    #vpc_security_group_ids = [ aws_security_group.roboshop-all.id ]
    tags = {
        Name= "Web-${count.index}"
    }
}