
variable "deploy_run_service_name" {
  type        = string
  description = "Cloud Run Service Name"
}

variable "location" {
  type        = string
  description = "Region for Deployment"
  default = "us-central1"
}

variable "imagename" {
  type        = string
  description = "Name of the image"
}


