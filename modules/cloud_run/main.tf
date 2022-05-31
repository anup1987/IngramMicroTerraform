provider "google" {
   project = var.project_id
}

data "google_container_registry_image" "gcr" {
  name = var.imagename
}

resource "google_project_service" "run" {
  service            = "run.googleapis.com"
  disable_on_destroy = false
}

resource "google_cloud_run_service" "deployrun" {
  
  depends_on = [
    google_project_service.run
  ]
  
   name     = "fuckuuus"
   location = var.location
  
  template {
    spec {
      containers {
        image = "gcr.io/ingrammicroproject/mavenproject@sha256:3ccda021425a6d4240f2b46480d7f006c641629b0f6c7f6f55e42ec7d7c256bf"
      }
    }
  }
  
}
  
