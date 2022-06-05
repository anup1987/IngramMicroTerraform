
module "build-cloud_run" {
  source               = "../../modules/cloud_run"
  serviceName          = var.serviceName
  imagename            = var.imagename
}
