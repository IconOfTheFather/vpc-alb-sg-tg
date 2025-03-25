# create ec2

resource "aws_instance" "serv1" {
  instance_type = "t2.micro"
  ami = "ami-0166fe664262f664c"
  availability_zone = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.ws.id]
  user_data = file("code.sh")
  subnet_id = aws_subnet.priv1.id
  tags = {
    Name = "Webserver-1"
  }

}
resource "aws_instance" "serv2" {
  instance_type = "t2.micro"
  ami = "ami-0166fe664262f664c"
  availability_zone = "us-east-1b"
  vpc_security_group_ids = [aws_security_group.ws.id]
  user_data = file("code.sh")
  subnet_id = aws_subnet.priv2.id
  tags = {
    Name = "Webserver-2"
  }

}