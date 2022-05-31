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
  
   name     = var.deploy_run_service_name
   location = var.location
  
  template {
    spec {
      containers {
        image = "gcr.io/ingrammicroproject/hellospringwebapplication@sha256:2e22f85b3cf4c996d98c6534746af1a703b4a25264b102f464d0f5ed157866b8"
      }
    }
  }
  
}
  
