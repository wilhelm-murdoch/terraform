resource "digitalocean_domain" "default" {
  name = "devilmayco.de"
}

resource "digitalocean_record" "valheim" {
  domain = digitalocean_domain.default.name
  type   = "A"
  name   = "valheim"
  value  = vultr_reserved_ip.valheim.subnet
}