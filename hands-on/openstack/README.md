### Running example
* docker-compose build infra
* docker-compose run infra

### Running terraform 
* cd to desired directory
* rm -fr .terraform; terraform init --backend-config "bucket=$TF_VAR_state_bucket"
* terraform -help to explain all commands
* terraform state
* terraform plan 
* terraform apply
* terraform destroy