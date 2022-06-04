terraform {
  backend "gcs" {
    bucket  = "ingramterraform"
    prefix  = "global/statefile/terraform.tfstate"
  }
}


module "build-trigger" {
  for_each  = var.git_repo
  source               = "../../modules/cloud_build_trigger"
  name      = each.value.name
  uri       = each.value.uri
  branch    = "master"
  repo_type = var.repo_type
}
