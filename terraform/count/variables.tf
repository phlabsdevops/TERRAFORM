variable "instance-name" {
  type=list 
  default=["mongodb", "mysql","redis","rabbitmq", "webserver"]
}
variable "ami-id" {
  type=string
  default="ami-09c813fb71547fc4f"
}
variable "instance-type" {
  type=string
  default="t3.micro"
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