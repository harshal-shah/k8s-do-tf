/*
resource "digitalocean_loadbalancer" "netsil-fe" {
  name = "netsil-fe"
  region = "${var.do-region}"

  forwarding_rule {
    entry_port = 80
    entry_protocol = "http"

    target_port = 30791
    target_protocol = "http"
  }

  droplet_tag = "${digitalocean_tag.node-tag.name}"
}

*/