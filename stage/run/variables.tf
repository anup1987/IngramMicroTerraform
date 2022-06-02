
variable "location" {
  type        = string
  description = "Region for Deployment"
  default = "us-central1"
}


variable "service_details" {
  description = "Deployment Details"
  type = map
  default = {
      repo1 = {
        serviceName     = "app1"
        imagename       = "gcr.io/ingrammicroproject/hellospringwebapplication:latest"
        tag             = "latest"
    },
 
    repo2 = {
        serviceName           =  "app2"
        imagename            =  "gcr.io/ingrammicroproject/hellospringwebapplication:latest"
        tag            =  "latest"
   } 
}
}
