provider "aws" {
    region = "${var.AWS_REGION}"
}

resource "aws_instance" "web1" {
    ami = var.instance_ami
    instance_type = "t2.micro"
    # VPC
    subnet_id = "${aws_subnet.dev-subnet-public-1.id}"
    # Security Group
    vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
    # the Public SSH key
    key_name = "AWS_LON_KEY"
  
}
