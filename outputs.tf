## -- Networking/outputs

output "public_subnets" {
  value = "${aws_subnet.tf_public_subnet.*.id}"
}

output "public_sg" {
  value = "${aws_security_group.tf_public_sg.id}"
}

output "subnet_ips" {
  value = "${aws_subnet.tf_public_subnet.*.cidr_block}"
}

// testing
//
output "security_group" {
  sensitive = true
  value = "${aws_security_group.tf_public_sg.id}"
}

output "foo" {
  sensitive = true
  value     = "bar"
}
