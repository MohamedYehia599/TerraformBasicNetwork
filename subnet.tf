resource "aws_subnet" "public-subnet-1" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = "${var.subnet_cidr}0.0/24"
  availability_zone = var.first_availability_zone
  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = "${var.subnet_cidr}1.0/24"
  availability_zone = var.second_availability_zone
  tags = {
    Name = "public-subnet-2"
  }
}

resource "aws_subnet" "private-subnet-1" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = "${var.subnet_cidr}2.0/24"
  availability_zone = var.first_availability_zone
  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = "${var.subnet_cidr}3.0/24"
  availability_zone = var.second_availability_zone
  tags = {
    Name = "private-subnet-2"
  }
}