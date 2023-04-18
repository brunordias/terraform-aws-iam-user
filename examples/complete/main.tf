provider "aws" {
  region = "us-east-1"
}

module "user" {
  source        = "../../"
  name          = "iam-user-module-example"
  create        = true
  groups        = ["read_only"]
  keys          = true
  login_profile = true
  policies      = ["arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"]
  pgp_key       = ""
  tags = {
    Name  = "Nome Completo"
    email = "user@email.com.br"
  }
}
