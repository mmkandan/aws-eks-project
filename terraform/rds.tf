resource "aws_db_instance" "mysql" {
  allocated_storage    = 20
  engine              = "mysql"
  engine_version      = "8.0"
  instance_class      = "db.t3.micro"
  name                = "mydb"
  username            = "admin"
  password            = "yourpassword"
  db_subnet_group_name = aws_db_subnet_group.mydb_subnet_group.name
  multi_az            = false
  storage_type        = "gp2"
  publicly_accessible = false
  tags = {
    Name = "MySQL DB"
  }
}

resource "aws_db_subnet_group" "mydb_subnet_group" {
  name       = "mydb-subnet-group"
  subnet_ids = [aws_subnet.subnet_a.id, aws_subnet.subnet_b.id]
}
