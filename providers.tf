provider "random" {
  
}

provider "google" {
    project = var.project-id
    region  = var.region
  
}
