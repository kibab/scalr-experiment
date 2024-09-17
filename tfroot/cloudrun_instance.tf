resource "google_cloud_run_service" "pgadmin" {
  name     = "pgadmin"
  location = "us-central1"

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