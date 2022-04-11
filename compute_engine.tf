resource "google_compute_network" "vpc_network" {
  name    = "new-terraform-network"
}
resource "google_compute_instance" "vm_instance" {
  name         = "test-vm"
  machine_type = var.machine_type
  tags         = ["web"]
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }
  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
      // Ephemeral public IP 
    }
  }

}
resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }
  target_tags   = ["web"]
  source_ranges = ["0.0.0.0/0"]
}