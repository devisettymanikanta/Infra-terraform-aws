#Region Block for instance creation
variable "region" {
    default = "us-east-1"
}

variable "instance_type" {
    default = "t2.micro"
}

#variable "number_of_instances" {
 #   default = 1
#}

variable "instance_name" {
    default = "linuxserver"
}

variable "ami_id" {
    default = "ami-01bc990364452ab3e"
}

variable "ami_key_pair_name" {
    default = "terraformkey"
}