resource "local_file" "ssh_key" {
  sensitive_content = tls_private_key.default.private_key_pem
  filename          = "${path.module}/key.priv"
  file_permission   = "0700"
}

resource "local_file" "connect" {
  filename        = "${path.module}/connect"
  file_permission = "0700"

  content = templatefile("${path.module}/files/connect.tpl", {
    key_path    = "${path.module}/key.priv"
    server_fqdn = digitalocean_record.valheim.fqdn
  })
}