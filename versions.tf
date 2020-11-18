terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
    scaleway = {
      source = "terraform-providers/scaleway"
    }
  }
  required_version = ">= 0.13"
}
