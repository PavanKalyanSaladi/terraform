provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0df8c184d5f6ae949"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
}
