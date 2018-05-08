provider "cloudstack" {
  api_url    = "https://api.exoscale.ch/compute"
  api_key    = "${var.exoscale_api_key}"
  secret_key = "${var.exoscale_secret_key}"
}
