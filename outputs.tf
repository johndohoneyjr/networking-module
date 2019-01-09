## -- Networking/outputs

output "public_subnets" {
//  value = "${aws_subnet.tf_public_subnet.*.id}"
  value = "1"
}

output "public_sg" {
//  value = "${aws_security_group.tf_public_sg.id}"
    value = "2"
}

output "subnet_ips" {
//  value = "${aws_subnet.tf_public_subnet.*.cidr_block}"
    value = "3"
}

// testing
//
output "securitygroup" {
  value = "${aws_security_group.tf_public_sg.id}"
}

output "foo" {
  sensitive = true
  value = "bar"
}

output "foo2" {
  sensitive = true
  value = "bar2"
}
