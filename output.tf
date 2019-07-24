output "public_ip" {
  description = "Outputs the public IP of the created instance"
  value = aws_instance.web.public_ip
}

