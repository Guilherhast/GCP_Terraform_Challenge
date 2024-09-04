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
variable "vpc_name" {
  description = "Zone of the project"
  default     = "" # uuidgen | tr -d '-'
}
