resource "aws_instance" "my-instance" {
  ami                         = "ami-06ddbc40823fba89a"
  instance_type               = "t2.micro"
  key_name                    = "sattish"
  vpc_security_group_ids      = ["${aws_security_group.my-sg.id}"]
  subnet_id                   = "${aws_subnet.public-subnet-1.id}"
  associate_public_ip_address = true
 user_data ="${file("data.sh")}"
  tags = {
    Name = "my-public-instance"
  }
}

resource "aws_instance" "my-instance1" {
  ami                         = "ami-06ddbc40823fba89a"
  instance_type               = "t2.micro"
  key_name                    = "sattish"
  vpc_security_group_ids      = ["${aws_security_group.my-sg.id}"]
  subnet_id                   = "${aws_subnet.public-subnet-2.id}"
  associate_public_ip_address = true
 user_data = "${file("data.sh")}"
 tags = {
 Name = "my-public-instance1"

  }
}


