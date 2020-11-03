terraform {
  required_version = "~> 0.13"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 3.44.0"
    }
  }
}

provider "google" {
  credentials = file("credentials.json")
  project     = var.project_id
}

