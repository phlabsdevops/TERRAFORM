variable "instance-name" {
  type=list 
  default=["mongodb", "mysql","redis","rabbitmq", "webserver"]
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