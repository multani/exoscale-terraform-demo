variable "exoscale_api_key" {
  description = "API key to connect to Exoscale"
}

variable "exoscale_secret_key" {
  description = "Secret key"
}

variable "exoscale_zone" {
  description = "Exoscale zone to deploy instances in"
}

variable "globals_prefix" {
  description = "Prefix for global (cross-zone) objects"
}

variable "ssh_public_key_path" {
  description = "Path to your SSH public key"
}

variable "instance_count" {
  description = "Number of instances to create"
  default     = 1
}
