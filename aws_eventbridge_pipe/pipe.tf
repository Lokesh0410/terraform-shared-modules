resource "aws_pipes_pipe" "pipe" {
  name     = var.pipe_name
  role_arn = var.role_arn

  source   = var.source_arn
  target   = var.target_arn

  tags = merge({
    Environment = var.environment
  }, var.additional_tags)
}
