resource "aws_instance" "web"{
    ami = var.ami-id #ami
    instance_type = local.instance_type
    #vpc_security_group_ids = [ aws_security_group.roboshop-all.id ]
    tags = {
        Name= "Web"
    }
}

#delete 3rd ec2 in the 11 instances?
#terraform destroy -target=aws_instance.web[2]