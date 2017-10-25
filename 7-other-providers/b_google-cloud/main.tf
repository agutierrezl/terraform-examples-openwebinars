provider "google" {
  credentials = "${file("/home/bart/Downloads/aryam-f82c99babbad.json")}"
  project     = "bart-72300"
  region      = "europe-west1"
}