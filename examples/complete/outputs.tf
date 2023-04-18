output "iam_user_name" {
  description = "The user's name"
  value       = module.user.iam_user_name
}

output "iam_access_key" {
  description = "The access key ID"
  value       = module.user.iam_access_key
}

output "iam_secret_key" {
  description = "The secret access key"
  value       = module.user.iam_secret_key
  sensitive   = true
}

output "iam_encrypted_secret_key" {
  description = "The encrypted secret access key"
  value       = module.user.iam_encrypted_secret_key
}

output "iam_login_profile_encrypted_password" {
  description = "The encrypted password of the login profile"
  value       = module.user.iam_login_profile_encrypted_password
}

output "iam_login_profile_password" {
  description = "The encrypted password of the login profile"
  value       = module.user.iam_login_profile_password
}
