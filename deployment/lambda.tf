resource "aws_lambda_function" "lambda" {
  filename      = var.filename
  function_name = "my_lambda"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "main.handler"

  source_code_hash = filebase64sha256(var.filename)

  runtime = "python3.9"
}

resource "aws_cloudwatch_event_rule" "lambda_rule" {
  name        = "MyLambdaCronRule"
  description = "Invoke a lambda by a scheduler"
  
  schedule_expression = "rate(${var.cron_interval})"
}

resource "aws_cloudwatch_event_target" "lambda_target" {
  target_id = "lambda-trigger"
  rule      = aws_cloudwatch_event_rule.lambda_rule.name
  arn       = aws_lambda_function.lambda.arn
}
