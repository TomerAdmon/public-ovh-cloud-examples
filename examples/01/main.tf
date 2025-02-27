module "keypair" {
  source  = "./modules/ssh_keypair"
  keypair = var.keypair
}

module "bastion" {
  source     = "./modules/instance_simple"
  //depends_on = [module.keypair, module.network]
  depends_on = [module.keypair]
  instance   = var.bastion
  endpoint = var.endpoint
  password = var.password
}

# module "floatip" {
#   source     = "./modules/floating_ip"
#   depends_on = [module.bastion]
#   floatip = {
#     region       = var.region
#     component_id = module.bastion.instance_id
#   }
# }
