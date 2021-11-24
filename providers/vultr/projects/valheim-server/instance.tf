resource "vultr_instance" "valheim" {
  plan             = "vc2-1c-1gb"
  region           = "sea"
  os_id            = "167"
  label            = "my-instance-label"
  tag              = "my-instance-tag"
  hostname         = "my-instance-hostname"
  enable_ipv6      = true
  backups          = "enabled"
  ddos_protection  = true
  activation_email = false
}