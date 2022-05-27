module "build-trigger" {
  for_each  = var.git_repo
  source               = "../modules/cloud_build_trigger"
  name      = each.value.name
  uri       = each.value.uris
  ref       = "master"
  repo_type = var.repo_type
}
  
module "cloud_run" {
  source           = "../modules/cloud_run"
  image_name       = var.image_name
  depends_on       = [module.build-trigger]
}
