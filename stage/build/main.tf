module "build-trigger_and_run" {
  for_each  = var.git_repo
  source               = "../modules/cloud_build_trigger"
  name      = each.value.name
  uri       = each.value.uri
  branch    = "master"
  repo_type = var.repo_type   
}
