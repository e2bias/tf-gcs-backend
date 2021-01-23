# Create a GCS Bucket for remote state
resource "google_storage_bucket" "tf-gcs-backend" {
  name          = "${var.project_id}-${var.bucket_name}"
  location      = var.location

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
