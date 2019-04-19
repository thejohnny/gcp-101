resource "google_project_service" "project" {
  project = "${var.project_id}"
  service = "compute.googleapis.com"

  disable_dependent_services = true
}