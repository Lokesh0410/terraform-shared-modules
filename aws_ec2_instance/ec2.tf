resource "aws_instance" "this" {
  ami = "ami-09e2d756e7d78558d"
  instance_type = "t2.micro"
  availability_zone = "ap-south-1"
  key_name = "lokesh-test"
  disable_api_termination = "true"
  vpc_security_group_ids = [ aws_security_group.security_group.id ]
}