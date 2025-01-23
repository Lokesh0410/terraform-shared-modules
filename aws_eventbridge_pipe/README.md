# AWS EventBridge Pipe Module

This module creates an EventBridge pipe to integrate a source (e.g., SNS) with a target (e.g., EventBridge event bus).

## Features

- Supports sources such as SNS and SQS.
- Configurable target, IAM role, and tagging.

## Input Variables

| Name        | Description                                   | Type   | Default | Required |
|-------------|-----------------------------------------------|--------|---------|----------|
| `pipe_name` | The name of the EventBridge pipe.             | string |         | Yes      |
| `source_arn`| ARN of the source resource (e.g., SNS topic). | string |         | Yes      |
| `target_arn`| ARN of the target resource (e.g., Event bus). | string |         | Yes      |
| `role_arn`  | IAM role ARN to execute the pipe.             | string |         | Yes      |

## Outputs

| Name      | Description                       |
|-----------|-----------------------------------|
| `pipe_arn`| ARN of the created EventBridge pipe.|

## Example Usage

```hcl
module "eventbridge_pipe" {
  source      = "../tf-shared/aws_eventbridge_pipe"
  pipe_name   = "example-pipe"
  source_arn  = "arn:aws:sns:eu-west-1:123456789012:example-topic"
  target_arn  = "arn:aws:events:eu-west-1:123456789012:event-bus/example-bus"
  role_arn    = "arn:aws:iam::123456789012:role/example-role"
}