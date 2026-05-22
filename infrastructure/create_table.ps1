$ENVIRONMENT = $args[0]

if ($ENVIRONMENT -eq "production") {
    Write-Host "Cannot drop tables in production!"
    exit 1
}

aws dynamodb delete-table --table-name payroll 2>$null 
Write-Host "Creating payroll table..."

aws dynamodb create-table `
  --table-name payroll `
    --attribute-definitions `
        AttributeName=PK,AttributeType=S `
        AttributeName=SK,AttributeType=S `
    --key-schema `
        AttributeName=PK,KeyType=HASH `
        AttributeName=SK,KeyType=RANGE `
    --billing-mode PAY_PER_REQUEST 
    

Write-Host "Table created successfully!"