provider "aws" {
  region = "ap-south-1"
  profile = "KBworld"
}

resource "aws_db_instance" "mysql" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7.30"
  identifier           =  "kb-database"
  instance_class       = "db.t2.micro"
  name                 = "kb007database"
  username             = "admin"
  password             = "dhanbad007"
  parameter_group_name = "default.mysql5.7"
  iam_database_authentication_enabled = true
  publicly_accessible = true
  skip_final_snapshot = true
}






