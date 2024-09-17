resource "google_cloud_run_v2_service" "pgadmin" {
  name     = "pgadmin"
  location = "us-central1"
  ingress = "INGRESS_TRAFFIC_INTERNAL_ONLY"


 template {
    containers {
      image = "dpage/pgadmin4"
    }
  }

}