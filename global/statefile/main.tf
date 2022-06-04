terraform {
  backend "gcp" {
    bucket  = "ingramterraform"
    prefix  = "terraform/state"
  }
}
