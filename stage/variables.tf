variable "image_name" {
  type        = string
  description = "The name of the Image"
}

variable "repo_type" {
  type        = string
  description = "The name of the repo Type"
  default = "GITHUB"
}

variable "git_repo" {
  description = "Git Repository Details"
  type = map
  default = {
      repo1 = {
        names           = "app1"
        uris            = "https://github.com/anup1987/spring-boot-hello-world-1"
        branchs         = "master"
    },
 
    repo2 = {
        names              =  "app2"
        uris               = "https://github.com/anup1987/cloud-build-samples/tree/main/maven-example"
        branchs            = "main"
   } 
}
}
