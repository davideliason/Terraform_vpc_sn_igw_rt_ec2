resource "aws_instance" "my-public-server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

}


output "instance_id" {
  value = aws_instance.my-public-server.id

}

output "public_ip" {
  value = aws_instance.my-public-server.public_ip

}
