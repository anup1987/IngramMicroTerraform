
variable "serviceName" {
  type        = string
  description = "Cloud Run Instance Name"
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
