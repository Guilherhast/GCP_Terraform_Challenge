variable "project_id" {
  description = "The project ID to host the network in"
  default     = ""
}
variable "region" {
  description = "Region of the project"
  default     = ""
}
variable "zone" {
  description = "Zone of the project"
  default     = ""
}
variable "bucket" {
  description = "Zone of the project"
  default     = "" # uuidgen | tr -d '-'
}
variable "vpc_name" {
  description = "Zone of the project"
  default     = "" # uuidgen | tr -d '-'
}
variable "subnet_region" {
  description = "Zone of the project"
  default     = "" # uuidgen | tr -d '-'
}
