locals {
  bucket_name = "${var.bucket_prefix}-${data.aws_caller_identity.current.account_id}"
}
