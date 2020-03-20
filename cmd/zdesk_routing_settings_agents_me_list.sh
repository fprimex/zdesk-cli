# https://developer.zendesk.com/rest_api/docs/chat/routing_settings#get-agent-routing-settings
zdesk_routing_settings_agents_me_list () {
  method=GET
  url=/api/v2/routing_settings/agents/me
}