provider "google" {
  project = var.gcp_project_id
  credentials = file(var.gcp_credentials)
  region  = var.gcp_region
  zone    = "var.gcp_zone"
}

data "google_client_config" "default" {}

provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}