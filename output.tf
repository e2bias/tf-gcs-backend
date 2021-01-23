output "gcs-url" {
  value = google_storage_bucket.tf-gcs-backend.url
  description = "The URL of the storage bucket (gs://)"
}
