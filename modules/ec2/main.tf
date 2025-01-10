resource "aws_instance" "my-public-server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id

  tags = {
    Name = "my-public-server"
  }

}

output "instance_id" {
  value = aws_instance.my-public-server.id

}

output "public_ip" {
  value = aws_instance.my-public-server.public_ip

}
