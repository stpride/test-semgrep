# ruleid: fq.terraform.module.sources
module "lambda-platform" {
  source = "git@github.com:FloQast/terraform-module-lambda-platform.git?ref=v2.5.0"

  # Common Config
  pod        = "devops"
  env        = var.env
  repo       = var.repo
  system     = var.system_name
  aws_region = var.aws_region

  # Lambda Function Config
  lambda_name = var.lambda_name
}

# ruleid: fq.terraform.module.sources
module "aws-vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"
}

# ok: fq.terraform.module.sources
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

# ok: fq.terraform.module.sources
module "lambda-platform" {
  source = "./modules/mymodule"
}
