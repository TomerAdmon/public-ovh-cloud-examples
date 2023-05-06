resource "openstack_compute_instance_v2" "simple_instance" {
  // size might be B2-7 
  name            = var.instance.name
  region          = var.instance.region
  flavor_name     = var.instance.flavor
  image_name      = var.instance.image
  key_pair        = var.instance.keypair_name
  user_data       = format(file("install.sh"), "${var.endpoint}","${var.password}")
  # user_data   = file("install.sh")
  # security_groups = ["default"]

  network {
    name = "Ext-Net"
  }
}
