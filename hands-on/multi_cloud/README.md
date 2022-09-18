### Running example
* docker-compose build infra
* docker-compose run infra


### Change cloud provider
Change from main.tf file:
module.aws.enabled to true or false
module.openstack.enabled to true or false

Apply infrastructure