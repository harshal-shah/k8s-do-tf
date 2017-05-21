output "k8s-master-public-ip" {
  value = "${digitalocean_droplet.k8s-master-droplet.ipv4_address}"
}