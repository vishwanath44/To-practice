resource "aws_instance" "example" {
  ami           = "ami-0b16ced290e00a1a3"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform"
    Project = "ASMPT"
  }
}

