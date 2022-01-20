resource "google_cloud_run_service" "default" {
  name     = var.name
  location = var.location

  template {
    spec {
      containers {
        image = var.image
      }
    }
  }

  traffic {
    percent         = var.percent
    latest_revision = var.latest_revision
  }
}
