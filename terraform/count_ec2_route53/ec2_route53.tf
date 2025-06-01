resource "aws_instance" "web"{
    #count=5
     count=length(var.instance-name)
    ami = var.ami-id #ami
    instance_type = var.instance-name[count.index]==var.instance-name[3] || var.instance-name[count.index]==var.instance-name[4] ? var.instance-type[0]: var.instance-type[1] 
    #vpc_security_group_ids = [ aws_security_group.roboshop-all.id ]
    tags = {
        Name=var.instance-name[count.index]
    }
}

resource "aws_route53_record" "web" {
  #count=5
   count=length(var.instance-name)
  zone_id = var.zone-id
  name    = "${var.instance-name[count.index]}.${var.domain-name}"
  type    = "A"
  ttl     = "1"
  #records = var.instance-name[count.index] == "webserver" ? [aws_instance.web[count.index].public_ip] : [aws_instance.web[count.index].private_ip]
  records = [var.instance-name[count.index] == var.instance-name[4] ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]

}