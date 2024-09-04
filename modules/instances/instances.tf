# Write here the instances
# machine_type, boot_disk, network_interface, metadata_startup_scrip, allow_stopping_for_update
# Uncomment after edit the 2nd file and run terraform init
## After you've done this go to instances and use terraform import
#TASK4b resource "google_compute_instance" var.third_instance {
#TASK4b   name         = var.third_instance
#TASK4b   machine_type = "n1-standard-1"
#TASK4b   #machine_type = var.instance_type
#TASK4b   boot_disk {
#TASK4b     initialize_params {
#TASK4b       image = "debian-cloud/debian-10-buster-v20200805"
#TASK4b     }
#TASK4b   }
#TASK4b   network_interface = "default"
#TASK4b   metadata_startup_script = <<-EOT
#TASK4b   #!/bin/bash
#TASK4b   EOT
#TASK4b   allow_stopping_for_update = true
#TASK4b }
#
#TASK6
#TASK6 resource "google_compute_instance" var.third_instance {
#TASK6   network_interface {
#TASK6     network = var.vpc_name
#TASK6     subnetwork = "subnetname"
#TASK6   }
#TASK6 }
#TASK7 resource "google_compute_firewall" "default" {
#TASK7   name    = "tf-firewall"
#TASK7   network = var.vpc_name
#TASK7   #network = google_compute_network.default.name
#TASK7   source_range = 0.0.0.0/0
#TASK7 
#TASK7   allow {
#TASK7     protocol = "tcp"
#TASK7     ports    = ["80"]
#TASK7   }
#TASK7 
#TASK7   source_tags = ["web"]
#TASK7 }
