module "build-cloud_run" {
  for_each  = var.service_details
  source               = "../modules/cloud_run"
  name      = each.value.name
  imagename = concat(each.value.registry,:,each.value.tag)
}
