variable "instance_type" {
  type = "string"
  default = "t2.micro"
}

variable "region" {
  type = "string"
  default = "eu-west-1"
}

variable "aws_id" {
  type = "string"
  default = "723002569774"
}

variable "aws_amis" {
  type = "map"
  default = {
    "eu-west-1" = "ami-acd005d5"
    "us-east-1" = "ami-8c1be5f6"
    "eu-central-1" = "ami-c7ee5ca8"
  }
}