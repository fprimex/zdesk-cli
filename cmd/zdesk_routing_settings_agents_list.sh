# https://developer.zendesk.com/rest_api/docs/chat/routing_settings#get-multiple-agents-routing-settings
zdesk_routing_settings_agents_list () {
  method=GET
  url=/api/v2/routing_settings/agents
  [ -n "$1" ] && query="$query&limit=$1"
  shift
  [ -n "$1" ] && query="$query&max_id=$1"
  shift
  [ -n "$1" ] && query="$query&since_id=$1"
  shift
}