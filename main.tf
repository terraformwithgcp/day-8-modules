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