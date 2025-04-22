provider "aws" {
    region = "us-east-1"
  
}
import {
  to = aws_instance.web
  id = "i-006c783cc50addee3"
}
