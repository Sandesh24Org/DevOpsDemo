provider "google" {
    credentials = file("${GOOGLE_APPLICATION_CREDENTIALS}")
    project     = "your-gcp-project-id"
    region      = "us-central1"
}

variable "TF_API_TOKEN" {
  description = "The API token for authentication"
  type        = string
  sensitive   = true
}

resource "google_storage_bucket" "my_bucket" {
    name          = "sandesh-bucket"
    location      = "us-central1"
    force_destroy = true
}