resource "tls_private_key" "bastion_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "bastion_key" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_ed25519_additional.pub")
}
