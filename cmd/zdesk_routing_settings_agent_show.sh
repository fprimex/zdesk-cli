# https://developer.zendesk.com/rest_api/docs/chat/routing_settings#get-agent-routing-settings
zdesk_routing_settings_agent_show () {
  method=GET
  url="$(echo "/api/v2/routing_settings/agents/{agent_id}" | sed \
    -e "s/{agent_id}"/"$1"/ \
  )"
  shift
}