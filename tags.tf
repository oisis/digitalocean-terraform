resource "digitalocean_tag" "prod" {
  name = "prod"
}

resource "digitalocean_tag" "uat" {
  name = "uat"
}
