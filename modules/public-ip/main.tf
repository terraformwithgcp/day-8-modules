resource "google_compute_address" "pi-address" {
    name         = var.pi_name
    project      = var.pi_project-id
  
}