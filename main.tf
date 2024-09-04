provider "google" {
  project     = var.project_id
  region      = var.region
  zone      = var.zone
}
# Remoe the block bellow in TASK3b
terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}
## Objects for task2
# Uncomment and then run terraform init
#TASK2 module "instances" {
#TASK2   source = "./modules/instances"
#TASK2 }
#TASK2 resource "google_compute_instance" "tf-instance-1" {
#TASK2   name         = "tf-instance-1"
#TASK2   machine_type = "e2-micro"
#TASK2   #machine_type = var.instance_type
#TASK2   boot_disk {
#TASK2     initialize_params {
#TASK2       image = "debian-cloud/debian-10-buster-v20200805"
#TASK2     }
#TASK2   }
#TASK2   network_interface = "default"
#TASK2   metadata_startup_script = <<-EOT
#TASK2   #!/bin/bash
#TASK2   EOT
#TASK2   allow_stopping_for_update = true
#TASK2 }
#TASK2 #
#TASK2 resource "google_compute_instance" "tf-instance-2" {
#TASK2   name         = "tf-instance-2"
#TASK2   machine_type = "e2-micro"
#TASK2   #machine_type = var.instance_type
#TASK2   boot_disk {
#TASK2     initialize_params {
#TASK2       image = "debian-cloud/debian-10-buster-v20200805"
#TASK2     }
#TASK2   }
#TASK2   network_interface = "default"
#TASK2   metadata_startup_script = <<-EOT
#TASK2   #!/bin/bash
#TASK2   EOT
#TASK2   allow_stopping_for_update = true
#TASK2 }
#
# After applying this use apply
#TASK3 module "storage" {
#TASK3   source = "./modules/storage"
#TASK3 }
# Uncomment after creating the storage
# Then run init -migrate-state
#TASK3b terraform {
#TASK3b   backend "gcs" {
#TASK3b     bucket  = "BUCKETNAMEHERE" # var.bucket
#TASK3b     prefix  = "terraform/state"
#TASK3b   }
#TASK3b }
#TASK6
#TASK6 resource "google_compute_network" "vpc_network" {
#TASK6   project                 = var.project_id # Replace this with your project ID in quotes
#TASK6   name                    = var.vpc_name
#TASK6   auto_create_subnetworks = false
#TASK6   mtu                     = 1460
#TASK6   subnets = [
#TASK6     {
#TASK6       subnet_name = "subnet-01"
#TASK6       subnet_ip =  "10.10.10.0/24"
#TASK6     },
#TASK6     {
#TASK6       subnet_name = "subnet-02"
#TASK6       subnet_ip  = "10.10.20.0/24"
#TASK6     }
#TASK6   ]
#TASK6 }
