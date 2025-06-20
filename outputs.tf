output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.app_alb.dns_name
}

output "bastion_public_dns" {
  description = "Public DNS name of the Bastion host"
  value       = aws_instance.bastion.public_dns
}
