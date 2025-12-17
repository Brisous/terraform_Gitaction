resource "aws_subnet" "public_a" {
vpc_id = aws_vpc.main.id
cidr_block = "10.0.0.0/24"
availability_zone = "us-east-1a"
map_public_ip_on_launch = true


tags = {
Name = "public-a"
Project = "aws-sandbox"
}
}


resource "aws_subnet" "private_a" {
vpc_id = aws_vpc.main.id
cidr_block = "10.0.1.0/24"
availability_zone = "us-east-1a"


tags = {
Name = "private-a"
Project = "aws-sandbox"
}
}


resource "aws_subnet" "public_b" {
vpc_id = aws_vpc.main.id
cidr_block = "10.0.2.0/24"
availability_zone = "us-east-1b"
map_public_ip_on_launch = true


tags = {
Name = "public-b"
Project = "aws-sandbox"
}
}


resource "aws_subnet" "private_b" {
vpc_id = aws_vpc.main.id
cidr_block = "10.0.3.0/24"
availability_zone = "us-east-1b"


tags = {
Name = "private-b"
Project = "aws-sandbox"
}
}