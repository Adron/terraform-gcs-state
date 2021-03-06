resource "google_storage_bucket" "blue-world-tf-state" {
  name     = "blue-world-terraform-state-test"
  location = "us-west1"
}

resource "google_storage_bucket_acl" "image-store-acl" {
  bucket = "${google_storage_bucket.blue-world-tf-state.name}"
  predefined_acl = "publicreadwrite"
}
