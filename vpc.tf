resource "aws_vpc" "main" {
cidr_block = var.vpc_cidr
enable_dns_support = true
enable_dns_hostnames = true


tags = {
Name = "sandbox-vpc"
Project = "aws-sandbox"
}
}


resource "aws_internet_gateway" "igw" {
vpc_id = aws_vpc.main.id


tags = {
Name = "sandbox-igw"
Project = "aws-sandbox"
}
}