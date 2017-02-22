#--------------------------------------------------------------
# This module creates all resources necessary for a VPC
#--------------------------------------------------------------

provider "aws"{
  access_key="xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  secret_key="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  region = "us-east-1"
}

variable "vpc_name" {

  type = "string"

  default = "qa-test-auto"

}

variable "cidr1" {

  type = "string"

  default = "10.70.0.0/21"

}






resource "aws_vpc" "vpc" {

        cidr_block = "${var.cidr}"

        tags{

                Name = "${var.vpc_name}"

}

}

output "vpc_id" {

        value = "${aws_vpc.vpc.id}"

}

