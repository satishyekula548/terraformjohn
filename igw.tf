resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.my-vpc.id
}
