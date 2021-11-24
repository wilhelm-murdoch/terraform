resource "random_password" "password" {
  length  = 16
  special = true
}

locals {
  ip_allow_list = {
    wilhelm = "103.100.225.202"
    josh    = "103.100.225.203"
    rob     = "103.100.225.204"
    peter   = "103.100.225.205"
  }

  valheim_server_name     = "Palheim"
  valheim_server_password = random_password.password.result
  valheim_world_name      = "Palheim"
}