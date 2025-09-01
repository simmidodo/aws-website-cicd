variable "project" { description = "Project tag/name"; type = string; default = "web-cicd" }
variable "region"  { description = "AWS region"; type = string; default = "eu-west-2" }
variable "bucket_name_override" {
  description = "Optionally provide a globally-unique bucket name. If empty, one is generated."
  type = string
  default = ""
}
