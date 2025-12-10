output "vpc-out-name" {
    value = google_compute_network.vpc_network
  
}
output "subnet-out-name" {
    value = google_compute_subnetwork.network_sub1.name
  
}