resource "aws_instance" "webservers" {
  ami = "${lookup(var.aws_amis, var.aws_region)}"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = ["${aws_security_group.web-sg.id}"]
  subnet_id = "${aws_subnet.pri1.id}"
  count = 2
  tags {
    Name = "${var.environment}-webservers"
  }
}