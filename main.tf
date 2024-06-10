provider "google" {
    credentials = file("devops@test-project-09061993-a369a8543be1.json")
    project     = "your-gcp-project-id"
    region      = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
    name          = "my-bucket"
    location      = "us-central1"
    force_destroy = true
}