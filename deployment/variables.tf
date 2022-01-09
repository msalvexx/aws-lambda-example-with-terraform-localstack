variable "aws_endpoint" {
  default = "http://localhost:8080"
}

variable "region" {
  default = "us-east-1"
}

variable "access_key" {
  default = "fake"
}

variable "secret_key" {
  default = "fake"
}

variable "cron_interval" {
  default = "1 minute"
}

variable "filename" {
  default = "lambda.zip"
}
