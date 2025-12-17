resource "aws_db_subnet_group" "db_subnets" {
name = "db-subnets"
subnet_ids = [
aws_subnet.private_a.id,
aws_subnet.private_b.id
]


tags = {
Project = "aws-sandbox"
}
}


resource "aws_db_instance" "db" {
identifier = "sandbox-db"
engine = "mysql"
instance_class = "db.t3.micro"
allocated_storage = 20
username = "admin"
password = "Password123!"
multi_az = false
skip_final_snapshot = true
db_subnet_group_name = aws_db_subnet_group.db_subnets.name
vpc_security_group_ids = [aws_security_group.web_sg.id]


tags = {
Project = "aws-sandbox"
}
}