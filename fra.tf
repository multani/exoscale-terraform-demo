module "exo_fra" {
  source = "exoscale"

  exoscale_api_key    = "${var.exoscale_api_key}"
  exoscale_secret_key = "${var.exoscale_secret_key}"
  exoscale_zone       = "de-fra-1"
  globals_prefix      = "exo/fra"
  ssh_public_key_path = "${var.ssh_public_key_path}"
}

module "cs_fra" {
  source = "cloudstack"

  exoscale_api_key    = "${var.exoscale_api_key}"
  exoscale_secret_key = "${var.exoscale_secret_key}"
  exoscale_zone       = "de-fra-1"
  globals_prefix      = "cs/fra"
  ssh_public_key_path = "${var.ssh_public_key_path}"
}
