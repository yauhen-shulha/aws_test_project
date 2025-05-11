terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "app_server" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  security_groups = [aws_security_group.sg_ec2_static_web_server.name]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd git  # Install git and Apache HTTP server

              # git clone https://github.com/yourusername/repo-name.git /tmp/repo

              # cp /tmp/repo/index.html /var/www/html/index.html

              systemctl start httpd
              systemctl enable httpd
              EOF

  tags = {
    Name = var.EC2_name
  }
}
