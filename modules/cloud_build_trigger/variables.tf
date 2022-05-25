
variable "name" {
  type        = string
  description = "The name of the Cloud Build resources"
}

variable "repo_type" {
  type        = string
  description = "The name of the repo Type"
  default = "GITHUB"
}

variable "git_repo" {
  type = "map"
  default = {
    "https://github.com/anup1987/spring-boot-hello-world-1"= "master"
    "https://github.com/anup1987/spring-boot-hello-world-1"= "master"
    "https://github.com/anup1987/spring-boot-hello-world-1"= "master"
  }
}

