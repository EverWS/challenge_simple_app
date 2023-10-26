# Defining the AWS provider and the region where the resources will be created
provider "aws" {
  region = "us-east-1"  # Choose the region you prefer
}

# Defining an AWS Security Group
resource "aws_security_group" "simple_app_java_security_group" {
  name        = "simple-app-java-security-group"
  description = "Security Group for SSH, HTTP, and port 8000"

  # Ingress rules allowing incoming traffic
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow any IP address for SSH
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow any IP address for HTTP
  }

  ingress {
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow any IP address for port 8000
  }

  # Egress rule allowing all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound traffic
  }
}

# Defining an EC2 instance in AWS
resource "aws_instance" "simple_app_java" {
  ami           = "ami-053b0d53c279acc90"  # Ubuntu AMI
  instance_type = "t2.micro"  # Instance type
  key_name      = aws_key_pair.simple_app_java_keypair.key_name  # SSH key to access the instance

  vpc_security_group_ids = [aws_security_group.simple_app_java_security_group.id]  # Associating the security group with the instance

  # Configuring the instance's initialization script
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update 
              sudo apt-get install -y software-properties-common 
              sudo add-apt-repository --yes ppa:ansible/ansible
              sudo apt-get install -y ansible
              EOF

  # Tags for instance identification
  tags = {
    Name        = var.instance_name
    Environment = "prod"
    Application = "Java"
    Class       = "DevOps"    
  }
}
