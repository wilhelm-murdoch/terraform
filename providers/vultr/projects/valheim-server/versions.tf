terraform {
  required_providers {
    vultr = {
      source  = "vultr/vultr"
      version = "2.6.0"
    }
    template = {
      source = "hashicorp/template"
    }
    tls = {
      source = "hashicorp/tls"
    }
    random = {
      source = "hashicorp/random"
    }
    http = {
      source = "hashicorp/http"
    }
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
  required_version = ">= 1.0.6"
}
