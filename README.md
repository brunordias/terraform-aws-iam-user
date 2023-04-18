# terraform-aws-iam-user
Terraform module which provides IAM user, keys, login and associations to groups and policies.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.74.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.74.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_group_membership.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership) | resource |
| [aws_iam_user_login_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_login_profile) | resource |
| [aws_iam_user_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Whether to create the IAM User. | `bool` | `true` | no |
| <a name="input_groups"></a> [groups](#input\_groups) | Attach user to this groups (group name). | `list(any)` | `null` | no |
| <a name="input_keys"></a> [keys](#input\_keys) | Create keys for the user. | `bool` | `true` | no |
| <a name="input_login_profile"></a> [login\_profile](#input\_login\_profile) | Create access to AWS web console. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The IAM user's name. | `string` | n/a | yes |
| <a name="input_password_length"></a> [password\_length](#input\_password\_length) | The length of the generated password | `number` | `20` | no |
| <a name="input_password_reset_required"></a> [password\_reset\_required](#input\_password\_reset\_required) | Whether the user should be forced to reset the generated password on first login. | `bool` | `true` | no |
| <a name="input_pgp_key"></a> [pgp\_key](#input\_pgp\_key) | Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Used to encrypt password and access key. | `string` | `""` | no |
| <a name="input_policies"></a> [policies](#input\_policies) | Attach this policies (ARN) to IAM user. | `list(any)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_access_key"></a> [iam\_access\_key](#output\_iam\_access\_key) | The access key ID |
| <a name="output_iam_encrypted_secret_key"></a> [iam\_encrypted\_secret\_key](#output\_iam\_encrypted\_secret\_key) | The encrypted secret access key |
| <a name="output_iam_login_profile_encrypted_password"></a> [iam\_login\_profile\_encrypted\_password](#output\_iam\_login\_profile\_encrypted\_password) | The encrypted password of the login profile |
| <a name="output_iam_login_profile_password"></a> [iam\_login\_profile\_password](#output\_iam\_login\_profile\_password) | The password of the login profile |
| <a name="output_iam_secret_key"></a> [iam\_secret\_key](#output\_iam\_secret\_key) | The secret access key |
| <a name="output_iam_user_name"></a> [iam\_user\_name](#output\_iam\_user\_name) | The user's name |