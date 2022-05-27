module "build-trigger" {
  source               = "../../cloud_build_trigger"
  name      = var.name
  uri       = var.uri
  branch    = var.branch
  repo_type = var.repo_type  
}
