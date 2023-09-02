# ruleid: fq.terraform.module.lambda.super_access
module "lambda-platform" {
  source = "git@github.com:FloQastInc/terraform-module-lambda-platform.git?ref=v2.5.0"

  # Common Config
  pod        = "devops"
  env        = var.env
  repo       = var.repo
  system     = var.system_name
  aws_region = var.aws_region

  # Lambda Function Config
  lambda_name = var.lambda_name

  lambda_environment = {
    ALLOW_SUPER_ACCESS=true
  }
}

# ok: fq.terraform.module.lambda.super_access
module "lambda-platform" {
  source = "git@github.com:FloQastInc/terraform-module-lambda-platform.git?ref=v2.5.0"
  # Common Config
  pod        = "devops"
  env        = var.env
  repo       = var.repo
  system     = var.system_name
  aws_region = var.aws_region

  # Lambda Function Config
  lambda_name = var.lambda_name
}