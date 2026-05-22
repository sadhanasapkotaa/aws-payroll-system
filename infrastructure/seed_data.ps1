aws dynamodb put-item `
    --table-name payroll `
    --item file://infrastructure/seeds/company.json
    
aws dynamodb put-item `
    --table-name payroll `
    --item file://infrastructure/seeds/employee1.json

    
aws dynamodb put-item `
    --table-name payroll `
    --item file://infrastructure/seeds/employee2.json


aws dynamodb put-item `
    --table-name payroll `
    --item file://infrastructure/seeds/attendance1.json


aws dynamodb put-item `
    --table-name payroll `
    --item file://infrastructure/seeds/attendance2.json

aws dynamodb put-item `
    --table-name payroll `
    --item file://infrastructure/seeds/taxrule.json