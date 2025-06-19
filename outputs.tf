output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.app_alb.dns_name
}

output "bastion_private_key_pem" {
  description = "Private key for SSH access to Bastion host"
  value       = tls_private_key.bastion_key.private_key_pem
  sensitive   = true
}
