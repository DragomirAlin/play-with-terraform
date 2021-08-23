output "gcp_network_name" {
  value = google_compute_network.network.*.name
}

output "aws_vpc" {
  value = aws_vpc.vpc.*.id
}

