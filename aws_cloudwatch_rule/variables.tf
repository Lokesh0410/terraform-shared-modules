variable "rule_name" {
  description = "The name of the CloudWatch event rule."
  type        = string
}

variable "event_bus_name" {
  description = "The name of the event bus to associate with this rule."
  type        = string
  default     = "default"
}

variable "event_pattern" {
  description = "The event pattern that determines which events trigger the rule."
  type        = string
}

variable "target_arn" {
  description = "The ARN of the target to invoke when the rule is triggered."
  type        = string
}

variable "environment" {
  description = "The environment for tagging and organizational purposes."
  type        = string
}

variable "additional_tags" {
  description = "Additional tags to apply to the resources."
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A map of tags to assign to the CloudWatch event rule."
  type        = map(string)
  default     = {}
}

variable "description"{
  type        = string
}