provider "aws" {
  region = "us-east-1"
}

data "aws_iam_role" "service_role_for_lex_bot" {
  name = "AWSServiceRoleForLexV2Bots_OM5G0L6Q2C"
}

resource "aws_lexv2models_bot" "example" {
  name = "example"
  data_privacy {
    child_directed = "false"
  }
  idle_session_ttl_in_seconds = 60
  role_arn                    = data.aws_iam_role.service_role_for_lex_bot.arn
}