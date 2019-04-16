provider "google" {
  version     = "2.3"
  credentials = "${file("account.json")}" 
  project     = "${var.project_id}"
  region      = "${var.region}"
}

provider "null" {
  version = "~> 2.1"
}

provider "random" {
  version = "~> 2.1"
}
