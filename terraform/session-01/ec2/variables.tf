variable "sg-name"{
    type=string
    default="allow_tls"
}
variable "sg-description"{
    type=string
    default="Allow TLS inbound traffic and all outbound traffic"
}
variable "sg-inbound-from-port"{
    type=number
    default=0
}
variable "sg-inbound-to-port"{
    type=number
    default=0
}
variable "cidr-blocks"{
    type=list
    default = ["0.0.0.0/0"]
}