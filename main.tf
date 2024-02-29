resource "aws_instance" "my_jenkins_tf_instance" {
  instance_type = "t2.micro"
  ami           = "ami-005e54dee72cc1d00"
  subnet_id     = "subnet-0f527dee344292b31"
}
