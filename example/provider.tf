provider "google" {
  credentials = "${file("/home/sravangcp/key.json")}"
  project     = "my-project-id"
}
