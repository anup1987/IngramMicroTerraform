data "google_container_registry_image" "app" {
  name = var.image_name
}

resource "google_project_service" "run" {
  service            = "run.googleapis.com"
  disable_on_destroy = false
}

resource "google_cloud_run_service" "app" {
  
   name     = "app"
   location = "us-central1"
  
  template {
    spec {
      containers {
        image = data.google_container_registry_image.app.image_url
      }
    }
  }
  
}
  
