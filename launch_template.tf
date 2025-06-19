resource "aws_launch_template" "app_server" {
  name_prefix   = "app-server-"
  image_id      = var.ami_id
  instance_type = var.instance_type

  network_interfaces {
    subnet_id       = var.subnet_id
    security_groups = [aws_security_group.alb_sg.id]
  }

  user_data = base64encode(<<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd git
    git clone https://github.com/yauhen-shulha/simpleStaticHtml.git /tmp/repo
    cp /tmp/repo/index.html /var/www/html/index.html
    systemctl start httpd
    systemctl enable httpd
  EOF
  )

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = var.EC2_name
    }
  }
}
