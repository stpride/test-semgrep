# ruleid: fq.terraform.detect_aws_sns_topic
resource "aws_sns_topic" "user_updates" {
  name = "user-updates-topic"
}


# ok: fq.terraform.detect_aws_sns_topic
module "sns" {
  source = "git@github.com:FloQastInc/terraform-module-sns.git?ref=v1.0.0"
} 