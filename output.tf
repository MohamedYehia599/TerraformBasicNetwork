output vpc_id {
    value = aws_vpc.demo-vpc.id
}

output vpc_cidr {
    value = aws_vpc.demo-vpc.cidr_block
}

output igw_id {
    value = aws_internet_gateway.igw.id
}


output nat_id {
    value = aws_nat_gateway.NAT-gateway.id
}

output public_route_table_id {
    value = aws_route_table.public-route-table.id
}

output private_route_table_id {
    value = aws_route_table.private-route-table.id
}


output public_subnet_1_id {
    value = aws_subnet.public-subnet-1.id
}


output public_subnet_1_cidr {
    value = aws_subnet.public-subnet-1.cidr_block
}

output public_subnet_2_id {
    value = aws_subnet.public-subnet-2.id
}

output public_subnet_2_cidr {
    value = aws_subnet.public-subnet-2.cidr_block
}

output private_subnet_1_id {
    value = aws_subnet.private-subnet-1.id
}


output private_subnet_1_cidr {
    value = aws_subnet.private-subnet-1.cidr_block
}

output private_subnet_2_id {
    value = aws_subnet.private-subnet-2.id
}


output private_subnet_2_cidr {
    value = aws_subnet.private-subnet-2.cidr_block
}


