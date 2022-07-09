variable "region" {
  type = string
}

variable "application_credential_id" {
  type = string
}


variable "application_credential_secret" {
  type = string
}

variable "auth_url" {
  type = string
}

variable "keypair" {
  type = string
}

variable "network" {
  type    = string
  default = "public" # default network to be used
}

variable "security_groups" {
  type    = list(string)
  default = ["default"] # Name of default security group
}

variable "image" {
  type = string
}

variable "flavor" {
  type = string
}

variable "instance_name" {
  type = string
}
