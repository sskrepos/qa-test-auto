
#--------------------------------------------------------------
# This module creates all resources necessary for a private
# subnet
#--------------------------------------------------------------


resource "aws_subnet" "privatesubnet" {

        vpc_id ="${var.vpc_id}"

        cidr_block = "${var.privete_cidrs}"

        tags {
                Name =  "${var.vpc_name}-private"

}

}


resource "aws_route_table" "privateroute" {

        vpc_id = "${var.vpc_id}"



}



