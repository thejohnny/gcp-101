provider "google" {
  version     = "2.3"
  credentials = "${file("account.json")}"
  project     = "johnny-carlin"
  region      = "us-central1"
}

provider "null" {
  version = "~> 2.1"
}

provider "random" {
  version = "~> 2.1"
}
