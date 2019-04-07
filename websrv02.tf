resource "digitalocean_droplet" "websrv02" {
  image              = "ubuntu-18-10-x64"
  name               = "websrv02"
  region             = "fra1"
  size               = "512mb"
  ipv6               = false
  private_networking = true
  user_data          = "${file("config/webuserdata.sh")}"

  ssh_keys = [
    "${var.ssh_fingerprint}",
  ]

  connection {
    user        = "root"
    type        = "ssh"
    private_key = "${file(var.pvt_key)}"
    timeout     = "2m"
  }
}
