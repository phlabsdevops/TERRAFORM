resource "aws_instance" "web"{
    ami = var.ami-id #ami
  #  instance_type = var.instance-name=="MongoDB" ? "t3.micro" : "t2.micro" 

   #for list using condtion
   #instance_type = var.instance-type==var.instance-name[1] ? "t2.micro" : "t3.small" 
   
   #for map type
    instance_type = var.instance-type==var.instance-name["vishnu"] ? "t2.micro" : "t3.small" 
    #vpc_security_group_ids = [ aws_security_group.roboshop-all.id ]
    #tags = var.tags
}