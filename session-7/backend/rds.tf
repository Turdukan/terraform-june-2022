resource "aws_db_instance" "main" {
  allocated_storage         = 10
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t3.micro"
  db_name                   = "matrix"
  username                  = "admin"
  password                  = random_password.db_password.result
  parameter_group_name      = "default.mysql5.7"
  publicly_accessible       = var.env == "dev" ? true : false #within 1 vpc (false) or anywhere (true)
  skip_final_snapshot       = var.env != "prod" ? true : false
  final_snapshot_identifier = var.env != "prod" ? null : "${var.env}-final-snapshot"
}

# null = empty. nothing
# = represents argument and value or key and value
# == means equal
# Equality Operator
# a == b true of they have the same type or value, otherwise false
# black == red - false
# red == red - true
# 17 != 17  - false
# 17 != 18  - true
# Conditional Expressions
# condition ? true_val : false_val
# example: red == red ? buy : not buy

