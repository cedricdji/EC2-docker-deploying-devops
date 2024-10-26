# variables.tf
variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS profile"
  default     = "default"
}

variable "aws_instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI ID"
  default     = "ami-0c02fb55956c7d316"
}

variable "aws_token" {
  description = "AWS token"
  default     = ""
}
# ip de l"instance
variable "aws_public_ip" {
  description = "ip"
  default     = ""
}

variable "key_name" {
  description = "key name"
  default     = ""
}