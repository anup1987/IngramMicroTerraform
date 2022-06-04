terraform {
  backend "gcs" {
    bucket  = "ingramterraform"
    prefix  = "terraform/state/terraform.tfstate"
  }
}


module "build-cloud_run" {
  for_each  = var.service_details
  source               = "../../modules/cloud_run"
  serviceName      = each.value.serviceName
  imagename = each.value.imagename
}
