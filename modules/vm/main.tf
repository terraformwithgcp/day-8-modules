resource "google_compute_instance" "vm1" {
    name         = var.vm_name
    machine_type = var.vm_instance-type
    zone         = var.vm_instance-zone

    boot_disk {
        initialize_params {
            image = var.vm_instance-image
        }
    }

    network_interface {
        subnetwork = var.vm_network-name

        access_config {
            nat_ip = var.vm_pub-ip
        }
    }

  
}