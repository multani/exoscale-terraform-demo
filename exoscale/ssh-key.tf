resource "exoscale_ssh_keypair" "terraform" {
  name       = "${var.globals_prefix}/terraform"
  public_key = "${file(var.ssh_public_key_path)}"
}
