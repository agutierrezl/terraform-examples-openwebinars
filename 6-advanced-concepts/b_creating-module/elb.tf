resource "aws_elb" "web" {
  name = "${var.environment}-web-elb"
  cross_zone_load_balancing = true
  subnets = ["${module.vpc.sub_pub1}", "${module.vpc.sub_pub2}"]
  security_groups = ["${aws_security_group.elb-sg.id}"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
  health_check {
    healthy_threshold = 2
    interval = 10
    target = "TCP:80"
    timeout = 5
    unhealthy_threshold = 5
  }
}