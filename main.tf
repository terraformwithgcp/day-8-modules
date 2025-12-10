module "cb" {
    source = "./modules/create-bucket"
    cb_bucketname = var.bucketname
    cb_region     = var.region
  
}
module "pi" {
    source = "./modules/public-ip"
    pi_name      = var.pubip-name
    pi_project-id = var.project-id
  
}
module "vm" {
    source = "./modules/vm"
    vm_name      = var.vm-name
    vm_instance-type = var.vm-type
    vm_instance-zone     = var.vm_zone
    vm_instance-image = var.vm-image
    vm_pub-ip    = module.pi.pi_out_public
    vm_network-name = var.network-name

  
}