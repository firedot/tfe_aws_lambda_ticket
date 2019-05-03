provider "aws" {
region = "us-east-1"
}

module "lambda" {
  source = "howdio/lambda/aws"

  name        = "test_lambda"
  description = "testing howdio lambda module"

  runtime      = "python3.6"
  package_path = "hello_world.py"


  handler = "test_handler.lambda_handler"

}

