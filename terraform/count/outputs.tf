output "instance_private_ip_0" {
   value= aws_instance.web[0].private_ip
 }
 output "instance_private_ip_1" {
   value= aws_instance.web[1].private_ip
 }
 output "instance_private_ip_2" {
   value= aws_instance.web[2].private_ip
 }
 output "instance_private_ip_3" {
   value= aws_instance.web[3].private_ip
 }
 output "instance_private_ip_4" {
   value= aws_instance.web[4].private_ip
 }
 output "instance_id_0" {
   value= aws_instance.web[0].id
 }
 output "instance_id_1" {
   value= aws_instance.web[1].id
 }
 output "instance_id_2" {
   value= aws_instance.web[2].id
 }
 output "instance_id_3" {
   value= aws_instance.web[3].id
 }
 output "instance_id_4" {
   value= aws_instance.web[4].id
 }
#  output "instance_private_ip" {
#    value= aws_instance.web
#  }