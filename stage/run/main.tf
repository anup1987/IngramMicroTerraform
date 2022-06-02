module "build-cloud_run" {
  for_each  = var.service_details
  source               = "../modules/cloud_run"
  serviceName      = each.value.serviceName
  imagename = concat(each.value.registry,":",each.value.tag)
}
