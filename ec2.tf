# Acess

provider "aws" {
access_key = "AKIA5IFGGR3TABCHHI64"
secret_key = "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"
region = "us-east-1"
}

# Ec2 details

resource "aws_instance" "myec2" {
ami = "ami-090fa75af13c156b4"
instance_type = "t2.micro"
count = 2
key_name = "Prakash_key"
Security_groups = ["sg-0326caf18001eb456"]
tags = {
Name = "Terraform"
}
}
