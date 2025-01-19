resource "aws_instance" "ubuntu-instance" {
    ami           = "ami-03b3b5f65db7e5c6f"
    instance_type = "t2.micro"
    key_name      = aws_key_pair.my_key.key_name  
    security_groups = [aws_security_group.my_security_group.name]

    tags = {
        Name = "ubuntu-ec2"  
    }
}