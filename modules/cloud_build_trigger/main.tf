resource "google_cloudbuild_trigger" "manual-trigger" {
  name        = "manual-build-terraform"

  source_to_build {
    uri       = "https://github.com/anup1987/spring-boot-hello-world-1"
    ref       = "refs/heads/master"
    repo_type = "GITHUB"
  }

  git_file_source {
    path      = "cloudbuild.yaml"
    uri       = "https://github.com/anup1987/spring-boot-hello-world-1"
    revision  = "refs/heads/master"
    repo_type = "GITHUB"
  }

}
