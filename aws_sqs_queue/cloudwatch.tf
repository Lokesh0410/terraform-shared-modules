# CloudWatch Log Group for SQS Queue
resource "aws_cloudwatch_log_group" "sqs_log_group" {
  name              = "/${var.username}/sqs"
  retention_in_days = 7
}
