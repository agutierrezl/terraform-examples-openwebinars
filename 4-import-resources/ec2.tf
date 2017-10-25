resource "aws_instance" "web" {
  ami = "ami-acd005d5"
  instance_type = "t2.small"
  tags {
    Name = "openwebinars-webserver"
  }
}