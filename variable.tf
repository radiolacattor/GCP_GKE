variable "gcp_credentials" {
  type = string
  description = "Location of service account for GCP"
}

variable "gcp_project_id" {
  type = string
  description = "GCP project id"
}

variable "gcp_region" {
  type = string
  description = "GCP region"
}

variable "gcp_zone" {
  type = list(string)
  description = "GCP zone"
}

variable "gcp_cluster_name" {
  type = string
  description = "GCP cluster name"
}

variable "gke_regional" {
  type = bool
  description = "GKE regional"
}

variable "gke_network" {
  type = string
  description = "VPC network name"
}

variable "gke_subnet" {
  type = string
  description = "VPC subnet name"
}

variable "gke_nodepool_name" {
  type = string
  description = "GKE nodepool name"
}

variable "gke_service_account" {
  type = string
  description = "GKE service account name"
}
