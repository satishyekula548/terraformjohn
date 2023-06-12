resource "aws_db_subnet_group" "my-db" {
name = "main"
subnet_ids = [aws_subnet.database-subnet-1.id, aws_subnet.database-subnet-2.id]
tags = {
Name = "my-db-subnet"
 }
}
 resource "aws_db_instance" "my-bd" {
allocated_storage = 10
db_subnet_group_name = aws_db_subnet_group.my-db.id
engine = "mysql"
engine_version = "8.0.28"
instance_class = "db.t2.micro"
multi_az = true
username = "admin"
password = "password"
skip_final_snapshot = true
vpc_security_group_ids = [aws_security_group.database-sg.id]
}
