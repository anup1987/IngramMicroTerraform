
variable "location" {
  type        = string
  description = "Region for Deployment"
  default = "us-central1"
}


variable "serviceName" {
  type        = string
  description = "Service Name"
}

variable "imagename" {
  type        = string
  description = "Image Name"
}
