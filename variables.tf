variable "region" {
  type    = string
  default = "us-west-2"
}

variable "name" {
  type    = string
  default = "genguardx"
}

variable "cluster_name" {
  type    = string
  default = "owapplications-cluster"
}

variable "vpc_id" {
  type    = string
  default = "vpc-1a77f87c"
}

variable "public_subnet_ids" {
  type = list(string)
  default = [
    "subnet-39ed8362",
    "subnet-2b718363",
  ]
}

variable "assign_public_ip" {
  type    = bool
  default = true
}

variable "image" {
  type = string
}

variable "hostname" {
  type = string
}

variable "certificate_arn" {
  type = string
}

variable "database_url" {
  type      = string
  sensitive = true
}

variable "license_key" {
  type      = string
  sensitive = true
}

variable "smtp_from" {
  type    = string
  default = "GGX Sandbox <admin@genguardx.ai>"
}

variable "smtp_username" {
  type      = string
  sensitive = true
  default   = "admin@genguardx.ai"
}

variable "smtp_password" {
  type      = string
  sensitive = true
  default   = ""
}

variable "smtp_host" {
  type    = string
  default = "smtp.gmail.com"
}

variable "smtp_port" {
  type    = number
  default = 465
}

variable "smtp_ssl" {
  type    = bool
  default = true
}

variable "environment_name" {
  type    = string
  default = "owapplications"
}

variable "desired_count" {
  type    = number
  default = 1
}

variable "task_cpu" {
  type    = number
  default = 2048
}

variable "task_memory" {
  type    = number
  default = 12288
}

variable "ephemeral_storage_gib" {
  type    = number
  default = 50
}

variable "data_volume_size_gib" {
  type    = number
  default = 500
}

variable "uploads_volume_size_gib" {
  type    = number
  default = 100
}

variable "databases_volume_size_gib" {
  type    = number
  default = 5
}

variable "jupyter_volume_size_gib" {
  type    = number
  default = 20
}

variable "notebooks_volume_size_gib" {
  type    = number
  default = 20
}

variable "tags" {
  type    = map(string)
  default = {}
}
