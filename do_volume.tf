resource "digitalocean_volume" "do_vol01" {
  region                  = "fra1"
  name                    = "do_vol01"
  size                    = 1
  initial_filesystem_type = "ext4"
  description             = "an example volume"
}

resource "digitalocean_volume" "do_vol02" {
  region                  = "fra1"
  name                    = "do_vol02"
  size                    = 1
  initial_filesystem_type = "ext4"
  description             = "an example volume"
}
