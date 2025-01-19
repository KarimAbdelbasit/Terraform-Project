output "instance_ip" {
  value = aws_instance.ubuntu-instance.public_ip
  description = "The public IP address of the EC2 instance"
}