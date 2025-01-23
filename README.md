# Terraform Shared Modules Repository

This repository contains reusable Terraform modules to simplify and standardize the provisioning of AWS resources. These modules encapsulate best practices, promote reusability, and make infrastructure as code (IaC) scalable and consistent across projects.

## Repository Structure

terraform-shared-modules/
├── aws_sqs_queue/
│   ├── sqs.tf              # SQS-related resources
│   ├── cloudwatch.tf       # CloudWatch resources for monitoring SQS
│   ├── variables.tf        # Input variables for the module
│   ├── outputs.tf          # Output variables for the module
│   └── README.md           # Documentation for the module
├── aws_eventbridge_pipe/
│   ├── pipe.tf             # EventBridge Pipe resources
│   ├── cloudwatch.tf       # CloudWatch resources for monitoring EventBridge Pipes
│   ├── variables.tf        # Input variables for the module
│   ├── outputs.tf          # Output variables for the module
│   └── README.md           # Documentation for the module
├── aws_cloudwatch_rule/
│   ├── rule.tf             # EventBridge rule resources
│   ├── variables.tf        # Input variables for the module
│   ├── outputs.tf          # Output variables for the module
│   └── README.md           # Documentation for the module
└── README.md               # Root-level documentation for tf-shared modules



## Modules Overview

### **`aws_sqs_queue/`**
- **Purpose**: Provisions an AWS SQS queue with configurable attributes such as message retention and visibility timeout.
- **Use case**: Decouple and buffer tasks or messages between systems for improved reliability.

### **`aws_eventbridge_pipe/`**
- **Purpose**: Configures EventBridge pipes to integrate different AWS services as sources and targets.
- **Use case**: Enable seamless integration between SNS topics, EventBridge event buses, or other supported sources and targets.

### **`aws_cloudwatch_rule/`**
- **Purpose**: Configures CloudWatch Event Rules with custom patterns and targets.
- **Use case**: Route events to targets like SQS queues, Lambda functions, or Step Functions for real-time processing.

---

## Features of this Repository

1. **Reusability**: Modules can be reused across multiple Terraform projects.
2. **Customizability**: Input variables allow you to tailor resource configurations to your specific needs.
3. **Scalability**: Modular design enables easy extension and integration with other modules.
4. **Maintainability**: Updates to shared modules are centralized, making it easier to roll out changes consistently.

---

## How to Use These Modules

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed.
- AWS credentials configured (e.g., via environment variables, `~/.aws/credentials`, or an IAM role).

### Example Usage

Include a module from this repository by specifying the `source` attribute in your Terraform configuration. For example:

```hcl
module "sqs_queue" {
  source                    = "git::https://github.com/<your-org>/terraform-shared-modules.git//aws_sqs_queue"
  queue_name                = "example-queue"
  visibility_timeout_seconds = 30
  message_retention_seconds = 345600
  tags                      = { Environment = "prod" }
}
```

### Input Variables and Outputs

Each module includes a variables.tf file listing its inputs and an outputs.tf file defining its outputs. Refer to the specific module's README.md for details.

For example:

```hcl
output "queue_arn" {
  value = module.sqs_queue.queue_arn
}
```
