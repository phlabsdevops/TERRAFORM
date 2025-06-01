resource "aws_instance" "web"{
    #count=11
    count=length(var.instance-name)
    ami = var.ami-id #ami
    instance_type = var.instance-type
    #vpc_security_group_ids = [ aws_security_group.roboshop-all.id ]
    tags = {
        Name= "Web-${count.index}"
    }
}

#delete 3rd ec2 in the 11 instances?
#terraform destroy -target=aws_instance.web[2]