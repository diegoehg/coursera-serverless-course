# coursera-serverless-course

This is a set of Terraform scripts where I will try to replicate the activities
that are in a Coursera's course about Serverless services in AWS. The main
project in that course is to create a chatbot app.

For running this project, I set up an AWS account, and then I assigned it the
the following managed policies:
- AmazonLexFullAccess

## About IAM Service Role For Lex
A service role is assigned to the bot for providing Lex permissions to use
other services, such as CloudWatch, Polly or Lambda. Create one service role
and then recover it through the `aws_iam_role` data source.

In this case I had already created one named
`AWSServiceRoleForLexV2Bots_OM5G0L6Q2C`, but you can create it another one and
put it in the data source.