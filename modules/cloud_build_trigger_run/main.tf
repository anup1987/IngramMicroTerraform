
module "cloud_run" {
  source           = "../cloud_run"
  deploy_run_service_name = var.name
  imagename = var.imagename
  #depends_on       = [module.build-trigger]
}

