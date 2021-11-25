resource "vultr_firewall_group" "valheim" {
  description = "Valheim Server Firewall"
}

resource "vultr_firewall_rule" "server" {
  firewall_group_id = vultr_firewall_group.valheim.id
  protocol          = "udp"
  ip_type           = "v4"
  subnet            = "0.0.0.0"
  subnet_size       = 32
  port              = "2456:2458"
  notes             = "Valheim server access for everyone."
}

resource "vultr_firewall_rule" "ssh" {
  for_each = local.ip_allow_list_ssh

  firewall_group_id = vultr_firewall_group.valheim.id
  protocol          = "tcp"
  ip_type           = "v4"
  subnet            = each.value
  subnet_size       = 32
  port              = 22
  notes             = "SSH access for ${each.key}."
}