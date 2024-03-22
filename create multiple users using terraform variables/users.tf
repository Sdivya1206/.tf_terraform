resource "aws_iam_user" "u1" {
  name = var.this_aws_iam_user_members[0]
  path = var.this_aws_iam_user_path
}
resource "aws_iam_user" "u2" {
  name = var.this_aws_iam_user_members[1]
  path = var.this_aws_iam_user_path
}