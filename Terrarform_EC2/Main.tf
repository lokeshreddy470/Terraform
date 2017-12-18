provider "aws" "Practice"{
  region = "us-east-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true

resource "aws_instance" "Instance1" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  tags {
    Name = "instance1"
  }
}
