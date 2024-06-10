provider "google" {
    credentials = var.TF_API_TOKEN
    project     = "your-gcp-project-id"
    region      = "us-central1"
}

variable "TF_API_TOKEN" {
  description = "The API token for authentication"
  type        = string
  sensitive   = true
}

resource "google_storage_bucket" "my_bucket" {
    name          = "my-bucket"
    location      = "us-central1"
    force_destroy = true
}