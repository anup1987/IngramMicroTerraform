data "google_container_registry_image" "gcr" {
  name = var.registry
}

resource "google_project_service" "run" {
  service            = "run.googleapis.com"
  disable_on_destroy = false
}

resource "google_cloud_run_service" "deployrun" {
  
   name     = var.deploy_run_service_name
   location = "us-central1"
  
  template {
    spec {
      containers {
        image = var.image
      }
    }
  }
  
}
  
