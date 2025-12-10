module "cb" {
    source = "./modules/create-bucket"
    cb_bucketname = var.bucketname
    cb_region     = var.region
  
}