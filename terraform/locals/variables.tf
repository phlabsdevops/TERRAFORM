variable "instance-name" {
  type=list 
  default=["mongodb", "mysql","redis"]
}
variable "ami-id" {
  type=string
  default="ami-09c813fb71547fc4f"
}
variable "IsProd" {
  type=bool
  default=true
}
