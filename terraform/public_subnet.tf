#--------------------------------------------------------------
# This module creates all resources necessary for a public
# subnet
#--------------------------------------------------------------

resource "aws_subnet" "publicsubnet" {

        vpc_id = "${var.vpc_id}"

        cidr_block = "${var.cidr}"


        tags {
                Name = "${var.vpc_name}-public"
}
}


resource "aws_internet_gateway" "igw" {

        vpc_id = "${var.vpc_id}"

        tags {

                Name = "${var.vpc_name}"

}

}


resource "aws_route_table" "publicroute" {

        vpc_id = "${var.vpc_id}"

        route {

        cidr_block = "0.0.0.0/0"

        gateway_id = "${aws_internet_gateway.igw.id}"

}
        tags {

                Name = "${var.vpc_name}-publicroute"

}

}

#resource "aws_route_table_association" "publicassociate" {

#       subnet






