terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "1.47.0"
    }
  }
}

provider "openstack" {
  region                        = var.region
  application_credential_id     = var.application_credential_id
  application_credential_secret = var.application_credential_secret
  auth_url                      = var.auth_url
}

# Create an instance
resource "openstack_compute_instance_v2" "server" {
  name            = var.instance_name
  image_id        = var.image
  flavor_id       = var.flavor
  key_pair        = var.keypair
  security_groups = var.security_groups

  network {
    name = var.network
  }
}

# Output VM IP Address
output "serverip" {
  value = openstack_compute_instance_v2.server.access_ip_v4
}
