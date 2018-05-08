module "exo_vie" {
  source              = "exoscale"
  exoscale_api_key    = "${var.exoscale_api_key}"
  exoscale_secret_key = "${var.exoscale_secret_key}"
  exoscale_zone       = "at-vie-1"
  globals_prefix      = "exo/vie"
  ssh_public_key_path = "${var.ssh_public_key_path}"
}

module "cs_vie" {
  source              = "cloudstack"
  exoscale_api_key    = "${var.exoscale_api_key}"
  exoscale_secret_key = "${var.exoscale_secret_key}"
  exoscale_zone       = "at-vie-1"
  globals_prefix      = "cs/vie"
  ssh_public_key_path = "${var.ssh_public_key_path}"
}
