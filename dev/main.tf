provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone

}



module "storage" {
  source      = "../modules/storage"
  bucket_name = var.bucket_name
}


module "pubsub" {
  source     = "../modules/pubsub"
  topic_name = var.topic_name
}

module "google_cloud_run" {
  source     = "../modules/google_cloud_run"
  image = var.image
  latest_revision = var.latest_revision
  location = var.location
  name = var.name
  percent = var.percent
}

