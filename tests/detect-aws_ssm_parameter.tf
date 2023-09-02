# ruleid: fq.terraform.detect_aws_ssm_parameter
resource "aws_ssm_parameter" "foo" {
  name  = "foo"
  type  = "String"
  value = "bar"
}


# ok: fq.terraform.detect_aws_ssm_parameter
module "ssm" {
  source = "git@github.com:FloQast/terraform-module-ssm.git?ref=v1.0.2"
} 