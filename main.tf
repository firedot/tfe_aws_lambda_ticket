provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region_id}"
}

module "lambda" {
  source = "howdio/lambda/aws"

  name        = "test_lambda"
  description = "testing howdio lambda module"

  runtime      = "python3.6"
  package_path = "hello_world.py"


  handler = "test_handler.lambda_handler"

}

