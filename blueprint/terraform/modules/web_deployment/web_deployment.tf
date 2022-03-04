resource "genesyscloud_webdeployments_configuration" "myWebDeployConfig" {
  name             = "${local.resource_name_prefix}-webmessengerconfig"
  description      = "This example configuration shows how to define a full web deployment configuration"
  languages        = ["en-us", "ja"]
  default_language = "en-us"
  messenger {
    enabled = true
    launcher_button {
      visibility = "On"
    }
    styles {
      primary_color = "#B0B0B0"
    }
    file_upload {
      mode {
        file_types       = ["image/png"]
        max_file_size_kb = 256
      }
      mode {
        file_types       = ["image/jpeg"]
        max_file_size_kb = 128
      }
    }
  }

}

resource "genesyscloud_webdeployments_deployment" "myWebMessagingDeployment" {
  name              = "${local.resource_name_prefix}-webmessengerdeploy"
  description       = "This is an example of a web deployment"
  allow_all_domains = true
  allowed_domains   = []
  status            = "Active"
  flow_id           = var.flowId
  configuration {
    id      = genesyscloud_webdeployments_configuration.myWebDeployConfig.id
    version = genesyscloud_webdeployments_configuration.myWebDeployConfig.version
  }
}
