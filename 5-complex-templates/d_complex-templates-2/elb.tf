resource "aws_elb" "elb-web" {
  name = "${var.environment}-${var.project}"
  cross_zone_load_balancing = true
  subnets = ["${aws_subnet.pub1.id}", "${aws_subnet.pub2.id}"]

  "listener" {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }
  security_groups = ["${aws_security_group.elb-sg.id}"]
}