terraform {
  backend "s3" {
    bucket         = "backend-yauhen-shulha-s3"
    key            = "ec2/dev/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "Data"
    acl            = "private"
  }
}
