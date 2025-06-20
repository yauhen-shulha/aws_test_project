variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-central-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-009082a6cd90ccd0e"
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance in"
  type        = string
  default     = "subnet-0ad8d24fa58098735"
}

variable "EC2_name" {
  description = "EC2 name"
  type        = string
  default     = "TestEc2"
}

variable "vpc_id" {
  description = "vpc_id"
  type        = string
  default     = "vpc-06d15575bd4a2194a"
}

variable "subnet_ids" {
  description = "subnet_ids"
  type        = list(string)
  default     = ["subnet-0ad8d24fa58098735", "subnet-0ee0794cf6825b0c6"]
}

variable "my_ip" {
  description = "My IP for SSH"
  type        = string
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "bastion-key"
}
variable "bastion_public_key" {
  description = "Public SSH key to use for bastion host"
  type        = string
}
