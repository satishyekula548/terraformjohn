resource "aws_lb" "external-alb" {
 name = "external-alb"
internal = false
load_balancer_type = "application"
security_groups = [aws_security_group.my-sg.id]
subnets = [aws_subnet.public-subnet-1.id,aws_subnet.public-subnet-2.id]
}
 
resource "aws_lb_target_group" "target-elb" {
name = "ALB-TG"
port = 80
protocol = "HTTP"
vpc_id = aws_vpc.my-vpc.id
}
 
 resource "aws_lb_target_group_attachment" "attachment" {
target_group_arn = aws_lb_target_group.target-elb.arn
target_id = aws_instance.my-instance.id
port = 80
depends_on = [
aws_instance.my-instance,
]
}
 
resource "aws_lb_target_group_attachment" "joy" {
target_group_arn = aws_lb_target_group.target-elb.arn
target_id = aws_instance.my-instance1.id
port = 80
depends_on = [
aws_instance.my-instance1,
 ]
}


resource "aws_lb_listener" "joy-" {
load_balancer_arn = aws_lb.external-alb.arn
port = 80
protocol = "HTTP"
default_action {
type = "forward"
target_group_arn = aws_lb_target_group.target-elb.arn
 }
}
