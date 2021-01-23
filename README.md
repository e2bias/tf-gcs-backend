# Google Cloud Storage (GCS) Terraform Backend Setup

## Usage
Once the backend is set up you can refer to it in your terraform configuration in the root module as follows:

    terraform {
      backend "gcs" {
        bucket = "<the name of your backend bucket>"
        prefix = "<prefix inside the bucket>"
        credentials = "<path to credentials.json file>"
      }
    }


