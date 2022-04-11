variable "project_id" {
  description = "Project Id "
  default     = "sonorous-asset-346506"
  type        = string
}

variable "zone" {
  description = "zone for the resources"
  default     = "us-central1-a"
  type        = string
}

variable "region" {
  description = "region for default resouces"
  default     = "us-central1"
  type        = string
}

variable "machine_type" {
  description = "machine type of the instance"
  type        = string
  default     = "f1-micro"

}
variable "force_destroy" {
  description = "Delete all objects when deleting bucket"
  type        = bool
  default     = false
}
variable "location" {
  description = "location for Bucket"
  type        = string
  default     = "us-central1"
}