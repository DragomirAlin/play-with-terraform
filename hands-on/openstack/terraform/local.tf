resource "local_file" "openstack_connection" {
  content  = module.openstack.enabled ? "ssh -J ec2-user@${server_ip}" : null
  filename = "${path.module}/local/connection_string_aws"
}
