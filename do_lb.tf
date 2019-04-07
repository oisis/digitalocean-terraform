resource "digitalocean_loadbalancer" "public" {
  name   = "do-lb-01"
  region = "fra1"

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  droplet_ids = [
    "${digitalocean_droplet.websrv01.id}",
    "${digitalocean_droplet.websrv02.id}",
  ]
}
