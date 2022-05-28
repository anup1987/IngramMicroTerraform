module "build-trigger" {
  for_each  = var.git_repo
  source               = "../modules/cloud_build_run"
  name      = each.value.names
  uri       = each.value.uris
  branch    = "master"
  repo_type = var.repo_type
}
  
