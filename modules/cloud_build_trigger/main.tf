resource "google_cloudbuild_trigger" "manual-trigger" {
  name        = var.name

  source_to_build {
    for_each  = var.git_repo
    uri       = each.value.uri
    ref       = each.value.branch
    repo_type = var.repo_type
  }

  git_file_source {
    for_each  =  google_cloudbuild_trigger.manual-trigger
    path      = "cloudbuild.yaml"
    uri       =  each.value.source_to_build.uri
    revision  = each.value.source_to_build.ref
    repo_type = var.repo_type
  }

}
