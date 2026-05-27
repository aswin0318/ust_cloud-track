variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "pub_sub_cidr" {
    type    = string
    default = "10.0.1.0/24"
}

variable "pvt_sub_cidr" {
    type    = string
    default = "10.0.2.0/24"
}

variable "avz" {
    type    = list(string)
    default = ["us-east-1a", "us-east-1b"]
}

