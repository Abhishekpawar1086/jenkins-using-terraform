resource "google_compute_instance" "jenkins" {
  name         = "jenkins-instance"
  machine_type = "e2-medium"
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
  network_interface {
    network    = "default"
   // subnetwork = google_compute_subnetwork.subnetwork.id
    access_config {
      // Ephemeral public IP
    }
  }
  metadata_startup_script = file(var.startup_script)
  tags = ["http-server"]

   service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = var.service_account
    scopes = ["cloud-platform"]
  }

}
