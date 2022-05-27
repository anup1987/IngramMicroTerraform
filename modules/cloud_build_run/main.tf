module "build-trigger_run" {
  source               = "../module/cloud_build_trigger"
  name      = var.name
  uri       = var.uri
  branch    = var.branch
  repo_type = var.repo_type  
}
