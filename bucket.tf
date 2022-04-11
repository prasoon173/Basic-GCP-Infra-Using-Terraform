resource "google_storage_bucket" "gcs" {
  name          = "sonorous-asset-346506"
  project       = var.project_id
  location      = var.location
  force_destroy = var.force_destroy

  uniform_bucket_level_access = true
}