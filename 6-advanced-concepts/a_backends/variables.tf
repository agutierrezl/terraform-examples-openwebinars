variable "aws_region" {
  type = "string"
  default = "eu-west-1"
}
variable "cidr" {
  type = "string"
  default = "10.0.0.0/16"
}

variable "pub1_cidr" {
  type = "string"
  default = "10.0.0.0/24"
}

variable "pub2_cidr" {
  type = "string"
  default = "10.0.1.0/24"
}

variable "pri1_cidr" {
  type = "string"
  default = "10.0.10.0/24"
}

variable "pri2_cidr" {
  type = "string"
  default = "10.0.11.0/24"
}

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

variable "project" {
  type = "string"
  default = "web"
}

variable "environment" {
  type = "string"
  default = "prod"
}

variable "rds_username" {
  type = "string"
  default = "root"
}

variable "rds_passwd" {
  type = "string"
  default = "0penW3b1n4r$"
}