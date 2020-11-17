provider "scaleway" {
  version = "1.13"
  organization_id = var.organization_id
  region          = "fr-par"
  zone            = "fr-par-1"
}

resource "scaleway_instance_security_group" "sg-devops-public" {
  name = "sg-devops-public"
  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"
}

resource "scaleway_instance_ip" "app_ip" {}
resource "scaleway_instance_server" "app" {
  type  = "DEV1-S"
  image = "centos_7.6"
  name  = "app"

  ip_id = scaleway_instance_ip.app_ip.id

  security_group_id = scaleway_instance_security_group.sg-devops-public.id
}

resource "scaleway_instance_ip" "db_ip" {}
resource "scaleway_instance_server" "db" {
  type  = "DEV1-S"
  image = "centos_7.6"
  name  = "db"

  ip_id = scaleway_instance_ip.db_ip.id

  security_group_id = scaleway_instance_security_group.sg-devops-public.id
}

resource "scaleway_account_ssh_key" "main" {
  name        = "main"
  public_key = var.public_key
}
