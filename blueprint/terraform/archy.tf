resource "local_file" "transform-message-bot-flow" {
  content = templatefile("architect-flows/templates/DudeWheresMyStuffMessage_v4-0.yaml.tftpl",
    { integration_category = module.lambda_data_action.integration_data_action_category,
  integration_data_action_name = module.lambda_data_action.integration_data_action_name })
  filename = "architect-flows/DudeWheresMyStuffMessage_v4-0.yaml"
}

resource "null_resource" "deploy_archy_flow_bot" {
  depends_on = [
    module.lambda_data_integration,
    module.lambda_data_action
  ]

  provisioner "local-exec" {
    command = "  archy publish --forceUnlock --file architect-flows/DudesWheresMyStuffBot_v16-0.yaml --clientId $GENESYSCLOUD_OAUTHCLIENT_ID --clientSecret $GENESYSCLOUD_OAUTHCLIENT_SECRET --location $GENESYSCLOUD_ARCHY_REGION  --overwriteResultsFile --resultsFile results.json "
  }
}

resource "null_resource" "deploy_archy_flow_message" {
  depends_on = [
    module.lambda_data_integration,
    module.lambda_data_action,
    null_resource.deploy_archy_flow_bot,
    module.dude_queues
  ]

  provisioner "local-exec" {
    command = "  archy publish --forceUnlock --file architect-flows/DudeWheresMyStuffMessage_v4-0.yaml --clientId $GENESYSCLOUD_OAUTHCLIENT_ID --clientSecret $GENESYSCLOUD_OAUTHCLIENT_SECRET --location $GENESYSCLOUD_ARCHY_REGION  --overwriteResultsFile --resultsFile results.json "
  }
}


