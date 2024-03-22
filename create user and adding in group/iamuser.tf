/*resource "aws_iam_user" "this_is_iam" {
  name = "tfuser"
  path = "/"

  tags = {
    tag-key = "divya"
  }
}

resource "aws_iam_access_key" "this_iam_key" {
  user = aws_iam_user.this_is_iam.name
}

resource "aws_iam_group" "ths_iam_grp"{
  name = "ds-grp1"
  path = "/"

}

resource "aws_iam_user_group_membership" "ds-grp1" {
    user = aws_iam_user.this_is_iam.name

    groups = [ 
        aws_iam_group.ths_iam_grp.name
     ]
  
}*/










