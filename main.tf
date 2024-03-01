resource "aws_instance" "my_jenkins_tf_instance" {
  instance_type = "t2.micro"
  ami           = "ami-0d18e50ca22537278"
  subnet_id     = "subnet-0f527dee344292b31"
}
