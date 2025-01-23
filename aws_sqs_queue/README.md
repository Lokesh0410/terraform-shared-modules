# AWS SQS Queue Module

This module provisions an AWS SQS queue with customizable attributes such as message retention and visibility timeout.

## Features

- Configure visibility timeout, message retention, and queue tags.
- Designed for reusability in multiple projects.

## Input Variables

   | Name                      | Description                                   | Type   | Default  | Required |
   |---------------------------|-----------------------------------------------|--------|----------|----------|
   | `queue_name`              | The name of the SQS queue.                   | string |          | Yes      |
   | `visibility_timeout_seconds` | Visibility timeout for the SQS queue (in seconds). | number | `30`     | No       |
   | `message_retention_seconds`  | Message retention period (in seconds).      | number | `345600` | No       |
   | `tags`                    | Additional tags for the queue.               | map    | `{}`     | No       |

## Outputs

   | Name        | Description                          |
   |-------------|--------------------------------------|
   | `queue_arn` | ARN of the created SQS queue.        |
   | `queue_url` | URL of the created SQS queue.        |

## Example Usage

   ```hcl
   module "sqs_queue" {
     source                    = "../tf-shared/aws_sqs_queue"
     queue_name                = "example-queue"
     visibility_timeout_seconds = 45
     message_retention_seconds = 259200
     tags                      = { Team = "Platform" }
   }
