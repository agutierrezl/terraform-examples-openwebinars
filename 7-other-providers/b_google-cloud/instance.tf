resource "google_compute_instance" "default" {
  name = "my-openwebinars-instance"
  machine_type = "f1-micro"
  zone = "europe-west1-b"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }
  network_interface {
    network = "default"
  }
}
