module "build-cloud_run" {
  for_each  = var.service_details
  source               = "../modules/cloud_run"
  name      = each.value.name
  uri       = each.value.uri
  branch    = "master"
  repo_type = var.repo_type   
}
