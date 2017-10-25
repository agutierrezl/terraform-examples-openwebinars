provider "aws" {
  region              = "${var.aws_region}"
  allowed_account_ids = ["${var.aws_id}"]
  profile = "openwebinars"
  version = "~> 1.0"
}

provider "mysql" {
  endpoint = "${aws_db_instance.mydb.endpoint}"
  username = "${var.rds_username}"
  password = "${var.rds_passwd}"
}
