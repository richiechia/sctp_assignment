# Lesson to follow

https://docs.google.com/presentation/d/1N7lT7Fd5baGTeah58c0mXPMLp_DYiapSo9cBpH0EQkY/edit#slide=id.g25ae32df687_0_67

aws sts get-caller-identity 

aws ssm get-parameter --name <value>




Secrets Manager

https://docs.aws.amazon.com/cli/latest/reference/secretsmanager/create-secret.html

aws secretsmanager create-secret —name <secret name> —secret-string ‘{“username”: “user1234”, “password”: “password1234”}’

https://docs.aws.amazon.com/cli/latest/reference/secretsmanager/get-secret-value.html

aws secretsmanager get-secret-value —secret-id <secret name>
https://docs.aws.amazon.com/cli/latest/reference/secretsmanager/delete-secret.html

aws secretsmanager delete-secret —secret-id <secret name> —force-delete-without-recovery

Parameter Store

https://docs.aws.amazon.com/cli/latest/reference/ssm/put-parameter.html

aws ssm put-parameter —name <parameter name> —value

https://docs.aws.amazon.com/cli/latest/reference/ssm/get-parameter.html

aws ssm get-parameter —name <parameter name>