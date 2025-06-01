resource "aws_instance" "web"{
   for_each=var.instance-name  #terraofrm will give each (each.key and each.value)
    ami = var.ami-id #ami
    instance_type = each.value
    #vpc_security_group_ids = [ aws_security_group.roboshop-all.id ]
    tags = {
        #Name=var.instance-name[each.key]
        Name=each.key
    }
}

resource "aws_route53_record" "web" {
   for_each=aws_instance.web
   zone_id = var.zone-id
   name    = "${each.key}.${var.domain-name}"
   type    = "A"
   ttl     = "1"
   records = [each.key=="webserver"?each.value.public_ip:each.value.private_ip]
 }

 #output "instance_info"{
 # value=aws_instance.web
 #}