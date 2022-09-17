# Create an instance
resource "openstack_compute_instance_v2" "server" {
  name            = var.instance_name
  image_id        = var.image
  flavor_id       = var.flavor
  key_pair        = var.keypair
  network {
    name = var.network
  }
}
