resource "random_password" "password" {
  length  = 8
  upper   = true
  lower   = true
  number  = true
  special = false
}

data "http" "admin_ip" {
  url = "http://ipv4.icanhazip.com/"
}

locals {
  ip_allow_list_ssh = {
    wilhelm = chomp(data.http.admin_ip.body)
  }

  steam_ids_admin = {
    wilhelm = 76561197981483348
  }

  steam_ids_permitted = {
    wilhelm = 76561197981483348
    josh    = 76561197971369712
    rob     = 76561197976964493
    peter   = 76561197960270584
    luke    = 76561198086670386
  }

  valheim_server_name     = "Palheim"
  valheim_server_password = random_password.password.result
  valheim_world_name      = "Palheim"
}