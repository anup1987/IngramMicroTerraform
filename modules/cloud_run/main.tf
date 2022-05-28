data "google_container_registry_image" "gcr" {
  name = "gcr.io/ingrammicroproject/hellospringwebapplication"
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
        image = "gcr.io/ingrammicroproject/hellospringwebapplication"
      }
    }
  }
  
}
  
