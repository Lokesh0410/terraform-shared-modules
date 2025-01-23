# AWS CloudWatch Event Rule Module

This module provisions a CloudWatch event rule with a target (e.g., SQS, Lambda).

## Features

- Configurable event pattern and rule description.
- Target integration with supported AWS services.

## Input Variables

| Name            | Description                                   | Type   | Default | Required |
|-----------------|-----------------------------------------------|--------|---------|----------|
| `rule_name`     | The name of the CloudWatch rule.              | string |         | Yes      |
| `description`   | Description of the rule.                     | string |         | No       |
| `event_bus_name`| Name of the EventBridge event bus.            | string |         | Yes      |
| `event_pattern` | JSON-formatted event pattern.                | string |         | Yes      |
| `target_arn`    | ARN of the target resource.                  | string |         | Yes      |

## Outputs

| Name      | Description                       |
|-----------|-----------------------------------|
| `rule_arn`| ARN of the created CloudWatch rule.|

## Example Usage

```hcl
module "event_rule" {
  source           = "../tf-shared/aws_cloudwatch_rule"
  rule_name        = "example-rule"
  event_bus_name   = "example-bus"
  event_pattern    = jsonencode({ source = ["custom.event"] })
  target_arn       = "arn:aws:sqs:eu-west-1:123456789012:example-queue"
}