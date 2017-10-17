provider "aws" {}

resource "aws_instance" "example" {
  ami           = "ami-85d30efc"
  instance_type = "t1.micro"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}