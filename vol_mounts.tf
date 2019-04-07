resource "digitalocean_volume_attachment" "websrv01_do_vol01" {
  droplet_id = "${digitalocean_droplet.websrv01.id}"
  volume_id  = "${digitalocean_volume.do_vol01.id}"
}

resource "digitalocean_volume_attachment" "websrv02_do_vol02" {
  droplet_id = "${digitalocean_droplet.websrv02.id}"
  volume_id  = "${digitalocean_volume.do_vol02.id}"
}
