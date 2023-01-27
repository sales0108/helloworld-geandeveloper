terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("chave.json")

  project = "devopsteste-375800"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_instance" "vmtestdevops" {
  name         = "vmtestdevops"
  machine_type = "e2-micro"
  zone         = "us-central1-c"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = "apt"

}
