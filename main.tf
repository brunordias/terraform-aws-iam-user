resource "aws_iam_user" "this" {
  count         = var.create == true ? 1 : 0
  name          = var.name
  force_destroy = var.force_destroy
  tags          = var.tags
}

resource "aws_iam_access_key" "this" {
  count   = var.keys == true && var.create == true ? 1 : 0
  user    = aws_iam_user.this.0.name
  pgp_key = var.pgp_key
}

resource "aws_iam_user_group_membership" "this" {
  count  = var.groups != null && var.create == true ? 1 : 0
  user   = aws_iam_user.this.0.name
  groups = var.groups
}

resource "aws_iam_user_login_profile" "this" {
  count                   = var.login_profile == true && var.create == true ? 1 : 0
  user                    = aws_iam_user.this.0.name
  pgp_key                 = var.pgp_key
  password_length         = var.password_length
  password_reset_required = var.password_reset_required

  lifecycle {
    ignore_changes = [password_reset_required]
  }
}

resource "aws_iam_user_policy_attachment" "this" {
  count      = var.create == true ? length(var.policies) : 0
  user       = aws_iam_user.this.0.name
  policy_arn = var.policies[count.index]
}
