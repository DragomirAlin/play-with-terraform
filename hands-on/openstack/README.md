### Running example
* docker-compose build infra
* docker-compose run infra

### Running terraform 
* terraform init
* terraform -help to explain all commands
* terraform state
* terraform plan 
* terraform apply
* terraform destroy


### Add infrastructure resources to terraform state
* terraform import `<key>` (check documentation for key)
Example:
```terraform
terraform import openstack_compute_instance_v2.instance_2 
```

### Terraform S3 OpenStack backend
* https://www.terraform.io/docs/backends/types/s3.html

1. Generate EC2 credentials
```bash
openstack ec2 credentials create
```
2. Create aws.env file
```bash
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_REGION=
AWS_S3_ENDPOINT=
```

### Openstack Provider

1. Generate Openstack Credentials `clouds.yaml` called `openstack_credentials.yaml`


