module "build-trigger_run" {
  source               = "../cloud_build_trigger"
  name      = var.name
  uri       = var.uri
  branch    = var.branch
  repo_type = var.repo_type  
}
  
module "cloud_run" {
  source           = "../cloud_run"
  depends_on       = [module.build-trigger]
}
