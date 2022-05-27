module "build-trigger" {
  source               = "../modules/cloud_build_trigger"
}
  
module "cloud_run" {
  source           = "../modules/cloud_run"
  image_name       = var.image_name
  depends_on       = [module.build-trigger]
}
