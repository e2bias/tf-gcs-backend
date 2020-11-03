# Create a GCS Bucket for remote state
resource "google_storage_bucket" "tf-backend" {
  name          = "${var.project_id}-${var.bucket_name}"
  location      = var.region
  force_destroy = true
  storage_class = var.storage_class
  versioning {
    enabled = true
  }
}
