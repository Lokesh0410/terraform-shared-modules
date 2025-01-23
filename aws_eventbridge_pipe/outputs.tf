output "pipe_arn" {
  description = "The ARN of the EventBridge pipe."
  value       = aws_pipes_pipe.pipe.arn
}
