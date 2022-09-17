### Running example
* docker-compose build infra
* docker-compose run infra

### Running terraform 
* cd to desired directory
* rm -fr .terraform; 
* terraform init --backend-config "bucket=$TF_s3_bucket" \
   --backend-config "key=$TF_VAR_s3_key"

* terraform -help to explain all commands
* terraform state
* terraform plan 
* terraform apply
* terraform destroy

### Terraform S3 Openstack backend
* https://www.terraform.io/docs/backends/types/s3.html

1. Generate EC2 credentials
```bash
openstack ec2 credentials create
```

