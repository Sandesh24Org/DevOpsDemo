resource "google_storage_bucket" "auto-expire" {
  name          = "bucket-tf-cloud-1406-1612"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_container_cluster" "primary" {
  name     = "gke-tf-cloud-1406-1612"
  location = "us-central1"

  enable_autopilot = true
  ip_allocation_policy {
    // This block is empty to enable IP aliasing with default settings.
  }
}