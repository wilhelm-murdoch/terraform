resource "tls_private_key" "default" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "vultr_ssh_key" "default" {
  name    = "ValheimServerSSHKey"
  ssh_key = tls_private_key.default.public_key_openssh

  lifecycle {
    ignore_changes = [ssh_key]
  }
}