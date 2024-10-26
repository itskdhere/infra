terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.25.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.44.0"
    }
    tailscale = {
      source  = "tailscale/tailscale"
      version = "0.17.2"
    }
  }
}

provider "google" {
  # credentials = file(var.credentials_path)
  access_token = var.access_token
  project      = var.project_id
  region       = var.region
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

provider "tailscale" {
  api_key = var.tailscale_api_token
  tailnet = var.tailscale_network
}
