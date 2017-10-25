terraform {
  required_version = ">= 0.10.7"
  backend "s3" {
    bucket = "openwebinars-states"
    region = "eu-west-1"
    key = "states-tfstate"
    dynamodb_table = "openwebinars-lockin"
    profile = "openwebinars"
  }
}

provider "aws" {
  region = "${var.region}"
  allowed_account_ids = ["${var.aws_id}"]
  profile = "openwebinars"
}

data "aws_availability_zones" "az" {}