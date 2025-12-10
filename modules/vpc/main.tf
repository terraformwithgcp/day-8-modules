resource "google_compute_network" "vpc_network" {
    name                    = var.vpc_name
    auto_create_subnetworks = false  
}
resource "google_compute_subnetwork" "network_sub1" {
    name          = "${var.vpc_name}-subnet1"
    ip_cidr_range = "10.0.1.0/24"
    region        = var.vpc_region
    network       = google_compute_network.vpc_network.id  
    project = var.vpc_project-id
}