resource "aws_db_instance" "mydb" {
  identifier             = "mydb"
  username               = "${var.rds_username}"
  password               = "${var.rds_passwd}"
  instance_class         = "db.t2.micro"
  engine                 = "mysql"
  allocated_storage      = 10
  storage_type           = "gp2"
  multi_az               = false
  db_subnet_group_name   = "${module.vpc.database_subnet_group}"
  vpc_security_group_ids = ["${aws_security_group.rds-sg.id}"]
  publicly_accessible    = true
  skip_final_snapshot    = true
}
