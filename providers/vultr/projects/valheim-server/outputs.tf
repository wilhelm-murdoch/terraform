output "ssh_private" {
  sensitive = true
  value     = tls_private_key.default.private_key_pem
}

output "ssh_public" {
  sensitive = true
  value     = tls_private_key.default.public_key_openssh
}

output "server_password" {
  sensitive = true
  value     = random_password.password.result
}

output "server_ip" {
  value = vultr_reserved_ip.valheim.subnet
}

output "server_fqdn" {
  value = digitalocean_record.valheim.fqdn
}
