variable "queue_name" {
  description = "The name of the SQS queue."
  type        = string
}

variable "visibility_timeout_seconds" {
  description = "Visibility timeout for the SQS queue."
  type        = number
  default     = 30
}

variable "message_retention_seconds" {
  description = "Message retention time for the SQS queue."
  type        = number
  default     = 345600
}

variable "username" {
  description = "The username to use in the pipe name."
  type        = string
  
}

variable "environment" {
  description = "The environment (e.g., dev, prod)."
  type        = string
}

variable "additional_tags" {
  description = "Additional tags to apply to the SQS queue."
  type        = map(string)
  default     = {}
}
