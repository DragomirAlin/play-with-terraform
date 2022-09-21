resource "openstack_compute_keypair_v2" "user_key" {
  name       = var.keypair.name
  public_key = var.keypair.public_key
}