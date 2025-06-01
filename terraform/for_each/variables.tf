variable "instance-name" {
  type=map 
  default={
    mongodb="t3.micro"
    mysql="t3.micro"
    redis="t3.micro"
    rabbitmq="t2.micro"
    webserver="t2.micro"
  }
}
variable "ami-id" {
  type=string
  default="ami-09c813fb71547fc4f"
}
# variable "instance-type" {
#   type=string
#   default="t3.micro"
# }
variable "instance-type" {
  type=list
  default=["t2.micro" , "t3.medium"]
}
variable "tags" {
  type=map
  default={
    Name = "HelloTerraform"
    Project="Roboshop"
    Environment="DEV"
    Terraform=true
  }
}
variable "zone-id" {
  type=string
  default="Z049815825KWUI6TFN3N8"
}
variable "domain-name" {
  type=string
  default="phlabsdevops.site"
}