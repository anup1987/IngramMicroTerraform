module "build-trigger" {
  source               = "../modules/cloud_build_trigger"
  name                 = var.name
}
