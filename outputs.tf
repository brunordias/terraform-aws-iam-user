output "iam_user_name" {
  description = "The user's name"
  value       = concat(aws_iam_user.this.*.name, [""])[0]
}

output "iam_access_key" {
  description = "The access key ID"
  value       = concat(aws_iam_access_key.this.*.id, [""])[0]
}

output "iam_secret_key" {
  description = "The secret access key"
  value       = concat(aws_iam_access_key.this.*.secret, [""])[0]
}

output "iam_encrypted_secret_key" {
  description = "The encrypted secret access key"
  value       = concat(aws_iam_access_key.this.*.encrypted_secret, [""])[0]
}

output "iam_login_profile_password" {
  description = "The password of the login profile"
  value       = concat(aws_iam_user_login_profile.this.*.password, [""])[0]
}

output "iam_login_profile_encrypted_password" {
  description = "The encrypted password of the login profile"
  value       = concat(aws_iam_user_login_profile.this.*.encrypted_password, [""])[0]
}
