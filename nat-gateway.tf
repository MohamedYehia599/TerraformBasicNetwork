resource "aws_eip" "nat-gateway-eip" {
     domain   = "vpc"
   }



resource "aws_nat_gateway" "NAT-gateway" {
  allocation_id = aws_eip.nat-gateway-eip.id
  subnet_id     = aws_subnet.public-subnet-1.id

  tags = {
    Name = "NAT-gateway"
  }


  depends_on = [aws_internet_gateway.igw]
}

