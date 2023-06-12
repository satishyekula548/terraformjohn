resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "192.168.0.0/20"
  map_public_ip_on_launch = true
  availability_zone       = "ap-southeast-2a"
  tags = {
    Name = "web subnet 1"
  }
}
resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "192.168.16.0/20"
  map_public_ip_on_launch = true
  availability_zone       = "ap-southeast-2b"
  tags = {
    Name = "web subnet 2"
  }
}
resource "aws_subnet" "application-subnet-1" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "192.168.32.0/19"
  map_public_ip_on_launch = false
  availability_zone       = "ap-southeast-2a"
  tags = {
    Name = "web subnet 1"
  }
}
resource "aws_subnet" "application-subnet-2" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "192.168.64.0/18"
  map_public_ip_on_launch = false
  availability_zone       = "ap-southeast-2b"
  tags = {
    Name = "web subnet 2"
  }
}
resource "aws_subnet" "database-subnet-1" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = "192.168.160.0/19"
  availability_zone = "ap-southeast-2a"
  tags = {
    Name = "database subnet 1"
  }
}
resource "aws_subnet" "database-subnet-2" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = "192.168.192.0/18"
  availability_zone = "ap-southeast-2b"
  tags = {
    Name = "database subnet 2"
  }
}
