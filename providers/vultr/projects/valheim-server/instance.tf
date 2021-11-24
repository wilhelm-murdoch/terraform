resource "vultr_instance" "valheim" {
  plan           = "vc2-2c-4gb"
  region         = "syd"
  os_id          = "517"
  label          = "valheim-server"
  tag            = "valheim-server"
  hostname       = "valheim-server"
  ssh_key_ids    = [vultr_ssh_key.default.id]
  reserved_ip_id = vultr_reserved_ip.valheim.id

  user_data = templatefile("${path.module}/files/cloud-init.yml", {
    valheim_server_name     = local.valheim_server_name
    valheim_server_password = local.valheim_server_password
    valheim_world_name      = local.valheim_world_name
    ssh_public_key          = tls_private_key.default.public_key_openssh
  })
}