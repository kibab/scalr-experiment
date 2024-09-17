resource "google_cloud_run_v2_service" "pgadmin" {
  name     = "pgadmin"
  location = "us-central1"
  ingress = "INGRESS_TRAFFIC_INTERNAL_ONLY"

  template {
    spec {
      containers {
        image = "dpage/pgadmin4"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}