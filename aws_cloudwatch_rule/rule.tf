resource "aws_cloudwatch_event_rule" "rule" {
  name        = var.rule_name
  description = var.description
  event_bus_name = var.event_bus_name
  event_pattern = var.event_pattern

  tags = merge({
    Environment = var.environment
  }, var.additional_tags)
}

resource "aws_cloudwatch_event_target" "target" {
  rule      = aws_cloudwatch_event_rule.rule.name
  arn       = var.target_arn
}
