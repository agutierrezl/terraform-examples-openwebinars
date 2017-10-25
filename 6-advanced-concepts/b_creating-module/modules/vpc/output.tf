output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}

output "sub_pub1" {
  value = "${aws_subnet.pub1.id}"
}

output "sub_pub2" {
  value = "${aws_subnet.pub2.id}"
}

output "sub_pri1" {
  value = "${aws_subnet.pri1.id}"
}

output "sub_pri2" {
  value = "${aws_subnet.pri2.id}"
}