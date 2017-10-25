variable "vpc_cidr" {
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

variable "enable_dns_hostnames" {
  type = "string"
  default = true
}

variable "enable_dns_support" {
  type = "string"
  default = true
}