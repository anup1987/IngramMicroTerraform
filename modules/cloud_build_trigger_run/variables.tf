variable "repo_type" {
  type        = string
  description = "The name of the repo Type"
  default = "GITHUB"
}


variable "name" {
  type        = string
  description = "The name of the Trigger"
}

variable "uri" {
  type        = string
  description = "The name of the URI"
}

variable "branch" {
  type        = string
  description = "The name of the Branch"
}
