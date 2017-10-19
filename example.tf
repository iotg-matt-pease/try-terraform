provider "aws" {}

resource "aws_instance" "example" {
  ami           = "ami-85d30efc"
  instance_type = "t1.micro"
  key_name = "ansible"
  vpc_security_group_ids = ["sg-8ee20cf5"]
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}

output "ip" {
  value = "${aws_eip.ip.public_ip}"
}
