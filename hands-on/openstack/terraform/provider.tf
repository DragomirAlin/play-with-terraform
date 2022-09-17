terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
  }
  backend "s3" {
    bucket                      = "terraform"
    key                         = "state"
    encrypt                     = false
    skip_credentials_validation = true
    skip_region_validation      = true
    force_path_style            = true
  }
}

provider "openstack" {
   cloud = "openstack"

}


