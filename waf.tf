resource "aws_wafv2_web_acl" "common-waf" {
  name = "comsoc-promitia-acl-${var.environment}"
  description = "WAFv2 administrated by Terraform"
  scope = "CLOUDFRONT"

  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name = "AWS-WAF-default-metric"
    sampled_requests_enabled = true
  }
}