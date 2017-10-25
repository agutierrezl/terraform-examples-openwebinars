resource "aws_instance" "webservers" {
  ami = "${lookup(var.aws_amis, var.region)}"
  instance_type = "${var.instance_type}"
  count = 3
  tags {
    Name = "webservers"
  }
}