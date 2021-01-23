variable "project_id" {
  type        = string
  description = "The GCP project ID"
}

variable "location" {
  type        = string
  description = "The multi-region location name (ASIA|EU|US)"
}

variable "bucket_name" {
  type        = string
  description = "The name of the GCS bucket"
}

