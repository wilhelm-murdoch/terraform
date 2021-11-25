resource "random_password" "password" {
  length  = 16
  special = true
}

data "http" "admin_ip" {
  url = "http://ipv4.icanhazip.com/"
}

locals {
  ip_allow_list_valheim = {
    wilhelm = chomp(data.http.admin_ip.body)
    josh    = "159.196.171.75"
    rob     = "159.196.168.238"
    peter   = "103.100.225.205"
  }

  ip_allow_list_ssh = {
    wilhelm = chomp(data.http.admin_ip.body)
  }

  valheim_server_name     = "Palheim"
  valheim_server_password = random_password.password.result
  valheim_world_name      = "Palheim"
}