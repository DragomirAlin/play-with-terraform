# resource "local_file" "openstack_connection" {
#   content  = module.openstack.enabled ? "ssh -J root@${server_ip}" : null
#   filename = "${path.module}/local/connection_string_aws"
# }
