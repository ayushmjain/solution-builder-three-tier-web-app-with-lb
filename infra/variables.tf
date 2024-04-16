variable "project_id" {
  type = string
  description = "GCP Project ID"
}

variable "region" {
  type = string
  description = "GCP Region"
}

variable "three-tier-app-vpc-network-network_name" {
  type = string
  description = "VPC network name"
}

variable "three-tier-app-cache-redis_instance_name" {
  type = string
  description = "Redis instance name"
}

variable "three-tier-app-cache-redis_version" {
  type = string
  default = "REDIS_6_X"
  description = "The version of Redis software"
}

variable "three-tier-app-cache-memory_size_gb" {
  type = number
  default = 1
  description = "Redis memory size in GiB"
}

variable "three-tier-app-database-database_name" {
  type = string
  description = "Database name"
}

variable "three-tier-app-database-database_version" {
  type = string
  default = "POSTGRES_14"
  description = "Database version"
}

variable "three-tier-app-database-disk_size" {
  type = number
  default = 10
  description = "The size of data disk in GB"
}

variable "three-tier-app-backend-cloud_run_service_name" {
  type = string
  description = "Cloud Run service name"
}

variable "three-tier-app-backend-cloud_run_service_image" {
  type = string
  description = "Cloud Run service container image"
}

variable "three-tier-app-frontend-cloud_run_service_name" {
  type = string
  description = "Cloud Run service name"
}

variable "three-tier-app-frontend-cloud_run_service_image" {
  type = string
  description = "Cloud Run service container image"
}

variable "three-tier-app-frontend-vpc_access_connector_id" {
  type = string
  default = null
  description = "VPC access connector ID used for accessing a VPC network"
}

variable "three-tier-app-lb-load_balancer_name" {
  type = string
  description = "Name of the load balancer to be created"
}

variable "three-tier-app-lb-load_balancer_port_name" {
  type = string
  default = null
  description = "Name of backend port. The same name should appear in the GCE VM instance group that is being load balanced"
}

variable "three-tier-app-lb-managed_instance_group_urls" {
  type = list(string)
  default = []
  description = "List of GCE VMs managed instance groups URLs"
}

variable "three-tier-app-lb-managed_instance_group_health_check_links" {
  type = list(string)
  default = []
  description = "List of health check links of GCE VMs MIGs that are being load balanced"
}
