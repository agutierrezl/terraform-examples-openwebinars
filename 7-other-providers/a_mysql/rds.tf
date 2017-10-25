resource "aws_db_instance" "mydb" {
  identifier        = "mydb"
  username          = "${var.rds_username}"
  password          = "${var.rds_passwd}"
  instance_class    = "db.t2.micro"
  engine            = "mysql"
  allocated_storage = 10
  storage_type      = "gp2"
  multi_az          = false

  vpc_security_group_ids = ["${aws_security_group.rds-sg.id}"]
  publicly_accessible    = true
  skip_final_snapshot    = true
}

resource "mysql_database" "mydb" {
  name = "mydb"
}

resource "mysql_user" "app_user" {
  user = "app_user"
  password = "secret_passwd"
  host = "%"
}

resource "mysql_grant" "grants" {
  database = "${mysql_database.mydb.name}"
  privileges = ["ALL"]
  user = "${mysql_user.app_user.user}"
  host = "%"
}