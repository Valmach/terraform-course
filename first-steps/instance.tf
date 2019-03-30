provider "aws" {
  access_key = "AKIA6G5T54T726RPWFU7"
  secret_key = "OkFvmBVc77uUOAMVkFTcSmWJhxf9YpCbzWz2PpaC"
  region     = "us-west-2"
}


resource "aws_instance" "example" {
  ami           = "ami-0b4a4b368aa8bd6f0"
  instance_type = "t2.micro"
  }
  resource "aws_vpc" "terraform" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags {
    Name = "production"
  }
}

  resource "aws_subnet" "terraform" {
  vpc_id = "${aws_vpc.terraform.id}"
  cidr_block = "10.0.0.0/16"
}
