resource "vultr_firewall_group" "valheim" {
  description = "Valheim Server Firewall"
}

resource "vultr_firewall_rule" "my_firewallrule" {
  firewall_group_id = vultr_firewall_group.valheim.id
  protocol          = "udp"
  ip_type           = "v4"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = "2456:2458"
  notes             = "my firewall rule"
}