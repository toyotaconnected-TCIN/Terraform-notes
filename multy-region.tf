provider "aws" {
  alias = "region1"
  region = "us-east-1"
}
# provider "aws" {
#   alias = "region2"
#   region = "ap-south-1"
# }

resource "aws_instance" "instance1" {
    ami = "ami-05b10e08d247fb927"
    instance_type = "t2.micro"
    key_name = "Linux"
    subnet_id = "subnet-0eafdfe2b809066bb"
    provider = aws.region1
}
# resource "aws_instance" "instance2" {
#     ami = "ami-0d682f26195e9ec0f"
#     instance_type = "t2.micro"
#     key_name = "Linux"
#     subnet_id = "subnet-0cb6d9553bcbe1555"
#     provider = aws.region2
# }