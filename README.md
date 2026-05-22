# aws-payroll-system
A serverless payroll system created using dynamo db, lambda, IAM, cloudwatch and API Gateway to send payments to employees of multiple companies all at once


# STEPS TO RECREATE THIS PROJECT:
1. Setup an AWS account (also available for free | requires card) or setup AWS local 
NOTE: The AWS local part will be available in the awslocal branch soon.

2. Install aws cli
   `winget install Amazon.AWSCLI`

3. Create a user in AWS IAM for this project and create access key and ** download the csv file **:
   `
    AmazonAPIGatewayAdministrator
    AmazonDynamoDBFullAccess
    AmazonSQSFullAccess
    AWSLambda_FullAccess
    AWSStepFunctionsFullAccess
    IAMUserChangePassword
   `

4. Configure aws cli with the command   `aws configure` :
   You will be asked to provide:
    `AWS Access Key ID      → from CSV File
     AWS Secret Access Key  → from CSV File
     Default region         → us-east-1
     Output format          → json`

5. Make sure you configured correctly `aws sts get-caller-identity`:
   You should get something like:
   {
    "UserId": "...",
    "Account": "....",
    "Arn": "arn:aws:iam::.....:user/payroll-user"
   }

6. Create a dynamo db table with the name `payroll` and primary key `PK` (string) and sort key `SK` (string) as attributes. Find the table I created at `infrastructur/create_table.sh`, It has a production proof, idempotent, table creation command. 

7. Check that the table is created `aws dynamodb list-tables` and you should see your tablw with attributes
   
8. 