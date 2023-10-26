# This output provides the public IP address of the EC2 instance
output "instance_ip" {
  value = aws_instance.simple_app_java.public_ip
  description = "The public IP of the EC2 instance"
}

# This output provides the ID of the EC2 instance
output "instance_id" {
  value = aws_instance.simple_app_java.id
}

# This output provides the public domain name of the EC2 instance
output "instance_public_dns" {
  value = aws_instance.simple_app_java.public_dns
}
