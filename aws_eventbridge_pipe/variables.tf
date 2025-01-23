variable "pipe_name" {
  description = "The name of the EventBridge Pipe."
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role associated with the pipe."
  type        = string
}

variable "username" {
  description = "The username to use in the pipe name."
  type        = string
  
}

variable "source_arn" {
  description = "The ARN of the source (SNS, SQS, etc.)."
  type        = string
}

variable "target_arn" {
  description = "The ARN of the target (SQS, Lambda, etc.)."
  type        = string
}

variable "environment" {
  description = "The environment (e.g., dev, prod)."
  type        = string
}

variable "additional_tags" {
  description = "Additional tags to apply to the pipe."
  type        = map(string)
  default     = {}
}
