data "google_container_registry_image" "app" {
  name = var.image_name
}

resource "google_project_service" "run" {
  service            = "run.googleapis.com"
  disable_on_destroy = false
}
