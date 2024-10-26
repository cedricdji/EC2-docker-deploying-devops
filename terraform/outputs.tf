# outputs.tf
output "aws_region" {
  value = var.aws_region
}

output "aws_public_ip" {
  value = aws_instance.docker_host.public_ip
}