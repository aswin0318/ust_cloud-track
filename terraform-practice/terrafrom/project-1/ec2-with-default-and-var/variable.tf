variable "aws_region" {
    type = string
    default = "us-east-1"  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "ami_id" {
    type = string
    default = "ami-091138d0f0d41ff90"
}

variable "subnet_id" {
    type = string
    default = "subnet-084011226f5109dde"
}

variable "instance_name" {
  type = string
  default = "demo"
}