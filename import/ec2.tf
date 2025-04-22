resource "aws_instance" "web" {
  ami                                  = "ami-0e449927258d45bc4"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1c"
  instance_type                        = "t2.micro"
  key_name                             = "alb-key"
  monitoring                           = false
  subnet_id                            = "subnet-03da0d7cb00d33e32"
  vpc_security_group_ids      = ["sg-0638f223094620fdc"]
  tags = {
    Name = "Terraform-Import"
  }
}