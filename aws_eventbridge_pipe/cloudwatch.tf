# CloudWatch Log Group for EventBridge Pipe Logs
resource "aws_cloudwatch_log_group" "eventbridge_pipe_log_group" {
  name              = "/${var.username}/eventbridge-pipe"
  retention_in_days = 7
}

