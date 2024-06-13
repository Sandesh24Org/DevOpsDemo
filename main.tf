## the bucketname is prefixed with the GCP project name which is unique
resource "google_storage_bucket" "auto-expire" {
  name          = "bucket-1306-1532"
  region      = "Italy"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 5
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