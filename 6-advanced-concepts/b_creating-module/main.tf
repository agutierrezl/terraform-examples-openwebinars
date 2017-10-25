terraform {
  required_version = ">= 0.10.7"
}

provider "aws" {
  region = "${var.aws_region}"
  allowed_account_ids = ["${var.aws_id}"]
  profile = "openwebinars"
}

data "aws_availability_zones" "az" {}

module "vpc" {
  source = "./modules/vpc"
}