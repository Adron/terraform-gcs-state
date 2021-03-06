provider "google" {
  credentials = "${file("../../secrets/account-thrashingcode.json")}"
  project     = "thrashingcorecode"
  region      = "us-west1"
}

terraform {
  backend "gcs" {
    bucket  = "blue-world-terraform-state-test"
    path    = "dev/terraform.tfstate"
    project = "thrashingcorecode"
  }
}
