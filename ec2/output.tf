output "instance_ip" {
    value = aws_instance.linuxserver.public_ip
}

output "instance_name" {
    value = aws_instance.linuxserver
  
}