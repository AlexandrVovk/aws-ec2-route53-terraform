terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "foo" {
  ami = "ami-0443305dabd4be2bc"
  instance_type = "t2.micro"
}

output "output" {
  value = aws_instance.foo.public_ip
}

data "aws_route53_zone" "selected" {
  name         = var.domain
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "subdomain"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.foo.public_ip]
}
