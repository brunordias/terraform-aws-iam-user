variable "name" {
  description = "The IAM user's name."
  type        = string
}

variable "keys" {
  description = "Create keys for the user."
  type        = bool
  default     = true
}

variable "groups" {
  description = "Attach user to this groups (group name)."
  default     = null
  type        = list(any)
}

variable "login_profile" {
  description = "Create access to AWS web console."
  type        = bool
  default     = false
}

variable "policies" {
  description = "Attach this policies (ARN) to IAM user."
  type        = list(any)
  default     = []
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

variable "pgp_key" {
  type        = string
  default     = ""
  description = "Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Used to encrypt password and access key."
}

variable "create" {
  type        = bool
  default     = true
  description = "Whether to create the IAM User."
}

variable "password_reset_required" {
  description = "Whether the user should be forced to reset the generated password on first login."
  type        = bool
  default     = true
}

variable "password_length" {
  description = "The length of the generated password"
  type        = number
  default     = 20
}
