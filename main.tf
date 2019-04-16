data "google_compute_zones" "available" {}

variable "project_services" {
  default = [
    "serviceusage.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "compute.googleapis.com",
    "oslogin.googleapis.com",
    "storage-api.googleapis.com",
  ]
}

resource "google_project_services" "main" {
  project  = "${var.project_id}"
  services = "${var.project_services}"
}

resource "google_compute_instance" "demo" {
  project      = "${google_project_services.main.project}"
  zone         = "${data.google_compute_zones.available.names[0]}"
  name         = "tf-compute-1"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20190320"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }
}
