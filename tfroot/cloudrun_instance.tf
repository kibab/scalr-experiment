resource "google_cloud_run_v2_service" "pgadmin" {
  name     = "pgadmin"
  location = "us-central1"
  ingress = "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER"
  deletion_protection = false


 template {
    containers {
      image = "dpage/pgadmin4"

      env {
        name = "PGADMIN_DEFAULT_EMAIL"
        value = "bar@bear.bear"
      }
      env {
        name = "PGADMIN_DEFAULT_PASSWORD"
        value = "this is a wrong non-existent password"
      }
      env {
        name = "PGADMIN_LISTEN_PORT"
        value = "8080"
      }
    }
  }

}

output "pgadmin_id" {
  value = google_cloud_run_v2_service.pgadmin.id
}