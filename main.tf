terraform {
  required_version = "~> 1.0"
  required_providers {
    #gitlab = "2.11.0"
    google      = "~> 3.90.0"
    google-beta = "~> 3.90.0"
    null        = "2.1.2"
    random      = "2.3.0"
  }
}
provider "google" {
  #version = "~> 3.90.0"
  credentials = file("terraform-key-new.json")

  project = var.project_id
  region = var.region
  zone   = var.zone
}