terraform {
  backend "gcs" {
    bucket  = "ingramterraform"
    prefix  = "terraform/state"
  }
}
