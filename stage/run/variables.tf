
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
        name           =  "app2"
        registry            =  "us.gcr.io/ingrammicroproject/spring-boot-hello-world-1:latest"
        tag            =  "latest"
   } 
}
}
