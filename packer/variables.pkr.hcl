
variable "project_name" {
  type        = string
  description = "name of project"
  default     = "Shopping"
}

variable "project_env" {
  type        = string
  description = "name of project"
  default     = "prod"
}
variable "ami_id" {
  type        = string
  description = " source ami id "
  default     = "ami-0a0f1259dd1c90938"
}
variable "instance_type" {
  type        = string
  description = "type of instance"
  default     = "t2.micro"
}
locals {
  image-timestamp = "${formatdate("DD-MM- YYYY-hh-mm", timestamp())}"
  image-name      = "${var.project_name}-${var.project_env}-${local.image-timestamp}"
}

