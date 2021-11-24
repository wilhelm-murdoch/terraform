resource "vultr_reserved_ip" "valheim" {
  label       = "Valheim Server Dedicated IP"
  region      = "syd"
  ip_type     = "v4"
  instance_id = "b9cc6fad-70b1-40ee-ab6a-4d622858962f"
}