resource "aws_vpc" "my-vpc" {
  cidr_block = "192.168.0.0/16"
  tags = {
    Name = "my-terra vpc"
  }
}
