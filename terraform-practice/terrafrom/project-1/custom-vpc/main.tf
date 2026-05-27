provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "demo_vpc" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "new-vpc"
    }
}

resource "aws_subnet" "pub_subnet" {
    vpc_id = aws_vpc.demo_vpc.id
    count = length(var.avz)
    availability_zone = var.avz[count.index]
    cidr_block = cidrsubnet(var.vpc_cidr, 4, count.index)

    tags = {
        Name = "public-subnet-${count.index}"
    }
}
resource "aws_subnet" "pvt_subnet" {
    vpc_id = aws_vpc.demo_vpc.id
    count = length(var.avz)
    availability_zone = var.avz[count.index]
    cidr_block = cidrsubnet(var.vpc_cidr, 4, count.index + 2)
    tags = {
        Name = "private-subnet-${count.index}"
    }
}

