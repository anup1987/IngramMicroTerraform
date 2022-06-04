terraform {
  backend "gcs"{
    bucket      = "ingramterraform"
    prefix      = "stage"
  }
}
