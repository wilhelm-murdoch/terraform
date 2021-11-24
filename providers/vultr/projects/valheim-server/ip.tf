resource "vultr_reserved_ip" "valheim" {
  label   = "ValheimServerIP"
  region  = "syd"
  ip_type = "v4"
}