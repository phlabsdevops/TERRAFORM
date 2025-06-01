output "fetch_public_ips"{
  value= {
    for a , b in aws_instance.web :
     a => b.public_ip
  }
}