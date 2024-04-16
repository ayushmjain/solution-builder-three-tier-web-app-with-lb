output "three-tier-app-frontend-cloud_run_service_endpoint" {
  value = module.three-tier-app-frontend.cloud_run_service_endpoint
  description = "Cloud Run service endpoint"
}

output "three-tier-app-lb-load_balancer_ip" {
  value = module.three-tier-app-lb.load_balancer_ip
  description = "IP address of the load balancer"
}

output "three-tier-app-lb-load_balancer_port" {
  value = module.three-tier-app-lb.load_balancer_port
  description = "Load balancer port"
}
