variable "api_name" {
  type    = string
  default = "api"
}

variable "instance_id" {
  type    = string
  default = "instance"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "cluster_name" {
  type    = string
  default = "cluster"
}

variable "bucket_name" {
  type    = string
  default = "bucket"
}

variable "dashboard_files" {
  type    = list(string)
  default = ["dashboard1.json", "dashboard2.json", "dashboard3.json"]
}