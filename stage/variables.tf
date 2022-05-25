variable "name" {
  type        = string
  description = "The name of the Cloud Build resources"
}

variable "repo_type" {
  type        = string
  description = "The name of the repo Type"
}

variable "git_repo" {
  description = "Git Repository Details"
  type = "map"
  default = {
      repo1 = {
        uri            = "https://github.com/anup1987/spring-boot-hello-world-1"
        branch         = "master"
    }
 
    repo2 = {
        name            = "https://github.com/anup1987/cloud-build-samples/tree/main/maven-example"
        branch            = "main"
   }
    
}
