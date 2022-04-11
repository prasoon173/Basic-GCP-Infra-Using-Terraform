terraform {
  backend "gcs" {
    bucket = "sonorous-asset-346506" 
    prefix = "terraform/state" 
   credentials ="terraform-key-new.json" 
    }
    }
