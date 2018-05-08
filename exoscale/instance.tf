resource "exoscale_compute" "instance" {
  size      = "Micro"
  template  = "Linux Debian 9 64-bit"
  disk_size = 10

  display_name = "exo-test${count.index}-${var.exoscale_zone}"
  zone         = "${var.exoscale_zone}"
  count        = "${var.instance_count}"
  key_pair     = "${exoscale_ssh_keypair.terraform.id}"

  connection {
    type  = "ssh"
    user  = "debian"
    agent = true
  }

  provisioner "remote-exec" {
    inline = ["hostname"]
  }
}
