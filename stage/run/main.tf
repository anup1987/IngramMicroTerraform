terraform {
  backend "gcs"{
    bucket      = "ingramterraform"
    prefix      = "stage/run"
  }
}

module "build-cloud_run" {
  source               = "../../modules/cloud_run"
  serviceName          = var.serviceName
  imagename            = var.imagename
}
