output "rule_arn" {
  description = "The ARN of the CloudWatch event rule."
  value       = aws_cloudwatch_event_rule.rule.arn
}
