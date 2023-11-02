provider "aws" {
    region = "${var.region}"
}

resource "aws_instance" "linuxserver" {
    ami = "${var.ami_id}"
    #count = "${var.number_of_instances}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}" 
    security_groups = ["demo-sg"]
    tags = {
        Name="${var.instance_name}"
    }
}

resource "aws_security_group" "demo-sg" {
  name        = "demo-sg"
  description = "Allow SSH inbound traffic"
 
  ingress {
    description      = "ssh access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "demo-server-sg"
  }
}
