variable "region" {
description = "Région imposée par la sandbox AWS"
type = string
default = "us-east-1"
}


variable "vpc_cidr" {
description = "CIDR du VPC"
type = string
default = "10.0.0.0/16"
}


variable "instance_type" {
description = "Type d'instance EC2 autorisé en sandbox"
type = string
default = "t3.micro"
}