resource "aws_instance" "web" {
  ami           = "ami-039e1f129f345d75f"
  instance_type = "t2.micro"
  count = 3
  }
