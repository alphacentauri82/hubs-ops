output "photomnemonic-vpc-id" {
  value = "${data.terraform_remote_state.vpc.vpc_id}"
}

output "photomnemonic-subnet-ids" {
  value = "${data.terraform_remote_state.vpc.private_subnet_ids}"
}

output "photomnemonic-bucket-id" {
  value = "${aws_s3_bucket.photomnemonic-bucket.id}"
}

output "photomnemonic-iam-role" {
  value = "${aws_iam_role.photomnemonic-iam-role.*.arn[0]}"
}

output "photomnemonic-security-group" {
  value = "${aws_security_group.photomnemonic.id}"
}

output "photomnemonic-account-id" {
  value = "${var.shared["account_id"]}"
}

output "photomnemonic-region" {
  value = "${var.shared["region"]}"
}

output "vpc-endpoint-dns" {
  value = "${lookup(aws_vpc_endpoint.photomnemonic.dns_entry[0], "dns_name")}"
}
