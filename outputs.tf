output "web_public_ip" {
description = "IP publique du serveur web"
value = aws_instance.web.public_ip
}


output "vpc_id" {
value = aws_vpc.main.id
}