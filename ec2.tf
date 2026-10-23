resource "aws_instance" "example" {
  ami           = "ami-0b16ced290e00a1a3"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform"
    Project = "ASMPT"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_all-terraform"
  description = "Allow TLS inbound traffic and all outbound traffic"
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  tags = {
    Name = "allow_all-terraform"
  }
}