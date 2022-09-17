

variable "sa_terraform" {
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

variable "s3_endpoint" {
  type = string
}

variable "s3_bucket" {
  type = string
}

variable "s3_key" {
  type = string
}

variable "s3_region" {
  type = string
}