variable "do_token" {}
variable "pub_key" {}
variable "pvt_key" {}
variable "ssh_fingerprint" {}

provider "digitalocean" {
  token   = "${var.do_token}"
  version = "~> 1.1"
}

provider "template" {
  version = "~> 2.1"
}
