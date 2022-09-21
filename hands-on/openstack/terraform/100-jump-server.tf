# Create instance
resource "openstack_compute_instance_v2" "server" {
  name            = var.instance_name
  image_id      = var.image_id
  flavor_id     = var.flavor_id
  key_pair        = openstack_compute_keypair_v2.user_key.name
  user_data       = file("scripts/first-boot.sh")
  network {
    port = openstack_networking_port_v2.http_port.id
  }
}

# Create network port
resource "openstack_networking_port_v2" "http_port" {
  name           = var.port["name"]
  network_id     = openstack_networking_network_v2.private_network.id
  admin_state_up = true
  # security_group_ids = [
  #   # openstack_compute_secgroup_v2.ssh.id,
  #   # openstack_compute_secgroup_v2.http.id,
  # ]
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.sub_1.id
  }
}