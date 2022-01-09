A sample project to show that is possible to deploy a local infrastructure with Terraform and Localstack.

## The Example
The application is a simple AWS Lambda function that only logs the time that the function was triggered. The trigger is a CloudWatch scheduler and the infrastructure is provisioned with Terraform.

```
make watch-logs 
docker-compose logs --follow aws | grep 'INFO:Lambda'
aws_1  | 2022-01-09T20:15:23.142:INFO:Lambda: Lambda triggered at 2022-01-09 20:15:23.142258.
aws_1  | 2022-01-09T20:16:23.077:INFO:Lambda: Lambda triggered at 2022-01-09 20:16:23.077909.
aws_1  | 2022-01-09T20:17:23.041:INFO:Lambda: Lambda triggered at 2022-01-09 20:17:23.041045.
aws_1  | 2022-01-09T20:18:23.011:INFO:Lambda: Lambda triggered at 2022-01-09 20:18:23.011676.
```

## Project requirements
- Terraform >= 0.13
- GNU Make
- Docker
- Docker Composer
- Python/PIP

## Usage

How to execute this sample?
```sh
make start        # starts docker-composer and deploy infra on localstack
make watch-logs   # watch logs of localstack container to show the Lambda function triggering
```

And how to stop ?
```sh
make stop
```
