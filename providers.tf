terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.52.0"
    }
  }
}

provider "google" {
  project = "test-project-09061993"
  region  = "us-central2"
  zone    = "us-central2-c"
}