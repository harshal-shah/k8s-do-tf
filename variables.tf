# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {}

variable "public_key_file" {
  description = "Location of the public key file"
}

variable "private_key_file" {
  description = "Location of the private key file"
}

variable "k8s-token" {
  description = "Token to join kubeadm cluster"
  /* Can be generated using below one liner :
  python -c 'import random; print "%0x.%0x" % (random.SystemRandom().getrandbits(3*8), random.SystemRandom().getrandbits(8*8))'
  */
}

variable "do-region" {
  default = "blr1"
  description = "Digital Ocean region to create droplets"
}

variable "do-image"{
  default = "ubuntu-16-04-x64"
  description = "Image to be used for all droplets"
}

variable "k8s-master-size"{
  default = "2gb"
  description = "Droplet size for kubernetes master"
}

variable "k8s-node-count" {
  default = 3
  description = "Number of worker nodes in cluster"
}

variable "k8s-node-size" {
  default = "2gb"
  description = "Size of worker nodes"
}
