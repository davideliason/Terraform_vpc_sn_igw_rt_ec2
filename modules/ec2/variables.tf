variable "ami" {
  description = "The AMI ID to use for the EC2 instance in us-west-2"
  type        = string
  default     = "ami-07d9cf938edb0739b"

}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "The subnet ID to use for the EC2 instance"
  type        = string

}
