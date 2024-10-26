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
  default     = "ami-0c55b159cbfafe1f0"
}

variable "aws_token" {
  description = "AWS token"
  default     = ""
}