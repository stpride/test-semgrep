# ruleid: fq.terraform.block_aws_resources
resource "aws_elb" "main" {
  name               = "foobar-terraform-elb"
  availability_zones = ["us-east-1c"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
}

# ok: fq.terraform.block_aws_resources
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

# ok: fq.terraform.block_aws_resources
resource "aws_route53_record" "test" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www.example.com"
  type    = "A"
  ttl     = 300
  records = [aws_eip.lb.public_ip]
}
