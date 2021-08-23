provider "google" {
  credentials = file("${var.sa_terraform}")
  project     = var.gcp_project_id
  region      = var.gcp_region
  version     = var.gcp_version
}

provider "aws" {
  version = var.aws_version
  region  = var.aws_region
  # credentials are sourced from env variables
}

provider "openstack" {
  user_name   = "var.username"
  tenant_name = "var.tenant"
  password    = "var.password"
  auth_url    = "var.auth_url"
  region      = "var.region"
}

terraform {
  backend "gcs" {
    bucket = {}
    prefix = "network_"
    #bucket     = "${var.state_bucket}"
  }

   required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
}