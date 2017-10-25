output "server-ip" {
  value = "${aws_instance.web-server.public_ip}"
}

output "az" {
  value = "${data.aws_availability_zones.az.names}"
}