resource "google_cloudbuild_trigger" "manual-trigger" {
  name        = var.name
  for_each  = var.git_repo
  
  source_to_build {
    uri       = each.value.uri
    ref       = each.value.branch
    repo_type = var.repo_type
  }

  git_file_source {
    path      = "cloudbuild.yaml"
    uri       =  each.value.uri
    revision  =  each.value.branch
    repo_type = var.repo_type
  }

}
