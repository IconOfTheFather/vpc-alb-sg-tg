/*
count = 2
depends_on =
for_each =
lifecycle =
*/
/*resource "aws_instance" "s1" {
    count = 1
    ami = "ami-0e449927258d45bc4"
    instance_type = "t2.micro"


    tags = {
      Name = "dev_server${count.index +1}"
    }
  
}
resource "aws_iam_user" "u1" {
    name = "cloudadmin"
    depends_on = [ aws_instance.s1 ]
  
}

variable "typeofinstance" {
  type = list(string)
  default = ["t2.micro", "t3.small"]
}

variable "info" {
   type = map(object({
    ami= string
    instance = string

   }))
    default = {
    dev ={ami:"ami-0e449927258d45bc4", instance: "t2.micro" }
    qa = {ami:"ami-0e449927258d45bc5", instance: "t2.micro" }
  
}
}
/*
resource "aws_instance" "s2" {
    ami = "ami-0e449927258d45bc4"
    for_each = toset(var.typeofinstance)
    instance_type = each.key

  
}
resource "aws_instance" "s2" {
    ami = each.key[ami]
    for_each = var.info
    instance_type = each.key[instance]


    tags = {
      Name = each.key
    }
}

provider "aws" {
    region = var.region
  
}
variable "region" {
  description = "value of region"
  type = string
  default = "us-east-1"
  
}
*/
provider "aws" {
  region = "us-east-1"
  alias = "us1"
  
}
provider "aws" {
  region = "us-west-1"
  alias = "usw1"
  
}
resource "aws" "server1"{
  provider = aws.us1
  ami = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"
  lifecycle {
    create_before_destroy = true
  }

  
}