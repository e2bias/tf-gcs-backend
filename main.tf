# Create a GCS Bucket for remote state
resource "google_storage_bucket" "tf-gcs-backend" {
  name     = format("${var.bucket_name}-%s", uuid())
  location = var.location

  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
      num_newer_versions = 10
    }
    action {
      type = "Delete"
    }
  }

  lifecycle {
    prevent_destroy = true
  }
}
