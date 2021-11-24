resource "vultr_startup_script" "my_script" {
  name   = "man_run_docs"
  script = "echo $PATH"
}