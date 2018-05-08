resource "cloudstack_instance" "instance" {
  template         = "Linux Debian 9 64-bit"
  service_offering = "Micro"

  name    = "cs-test${count.index}-${var.exoscale_zone}"
  zone    = "${var.exoscale_zone}"
  count   = "${var.instance_count}"
  keypair = "${cloudstack_ssh_keypair.terraform.id}"

  connection {
    type = "ssh"
    user = "debian"
  }

  provisioner "remote-exec" {
    inline = ["hostname"]
  }
}
