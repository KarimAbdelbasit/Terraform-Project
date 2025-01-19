provider "aws" {
  region = "eu-central-1"  
}

resource "aws_key_pair" "my_key" {
  key_name   = "ubuntu-key"  
  public_key = file("~/.ssh/id_rsa.pub")  
}

resource "aws_security_group" "my_security_group" {
  name        = "my_security_group"
  description = "Security group for allowing SSH and HTTP access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  
    cidr_blocks = ["0.0.0.0/0"]
  }
}