# 010-ssh-key.tf
variable "keypair" {
  type = map(string)
}

# 020-network.tf
variable "network" {
  type = map(string)
}

variable "subnet" {
  type = map(string)
}

variable "router" {
  type = map(string)
}

# 030-sec-groups.tf
variable "security_groups" {
  type    = list(string)
  default = ["default"] # Name of default security group
}

# 040-web-servers.tf
variable "image_id" {
  type = string
}

variable "flavor_id" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "port" {
  type = map(string)
}



