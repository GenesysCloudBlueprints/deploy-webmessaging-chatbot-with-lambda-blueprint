
variable "genesyscloud_scripting_env" {
  type        = string
  description = "Short hand code for AWS scripting region (e.g. mypurecloud,usw2, cac1)"
}

variable "genesyscloud_scripting_url" {
  type        = string
  description = "Genesys Cloud Apps URL.  See https://developer.genesys.cloud/api/rest/ for a complete list of apps URLs."
}

variable "genesyscloud_webmessaging_deploymentid" {
  type        = string
  description = "Deployment id of the webmessaging script"
}
