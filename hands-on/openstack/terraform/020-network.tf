# Router creation
resource "openstack_networking_router_v2" "router_gateway" {
  name                = var.router["name"]
  external_network_id = var.router["external_network_id"]
  admin_state_up      = true
}

# Network creation
resource "openstack_networking_network_v2" "private_network" {
  name = var.network["name"]
}

# Subnet creation
resource "openstack_networking_subnet_v2" "sub_1" {
  name            = var.subnet["name"]
  network_id      = openstack_networking_network_v2.private_network.id
  cidr            = var.subnet["cidr"]
}

# Add Router interface
resource "openstack_networking_router_interface_v2" "router_interface_sub_1" {
  router_id = openstack_networking_router_v2.router_gateway.id
  subnet_id = openstack_networking_subnet_v2.sub_1.id
}