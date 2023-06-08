resource "genesyscloud_flow" "deploy_archy_flow_bot" {
  filepath = "${path.module}/DudesWheresMyStuffBot.yaml"
  file_content_hash = filesha256("${path.module}/DudesWheresMyStuffBot.yaml") 
  substitutions = {
    flow_name             = "DudesWheresMyStuffBot"
    default_language      = "en-us"
    force_unlock          = true
  }
}

resource "genesyscloud_flow" "deploy_archy_flow_chat" {
  filepath = "${path.module}/DudeWheresMyStuffMessage.yaml"
  file_content_hash = filesha256("${path.module}/DudeWheresMyStuffMessage.yaml") 
  substitutions = {
    flow_name           = "DudeWheresMyStuffMessage"
    force_unlock        = true
    default_language    = "en-us"
    integration_category = var.integration_category
    integration_data_action_name = var.integration_data_action_name
  }
}