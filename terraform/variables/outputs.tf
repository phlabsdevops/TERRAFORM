output "id_of_instance" {
  value= aws_instance.web.id
}
output "instance_public_ip" {
  value= aws_instance.web.public_ip
}
output "instance_private_ip" {
  value= aws_instance.web.private_ip
}