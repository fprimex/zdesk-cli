# https://developer.zendesk.com/rest_api/docs/chat/agents#get-all-agents
zdesk_agents_list () {
  method=GET
  url=/api/v2/agents
  [ -n "$1" ] && query="$query&limit=$1"
  shift
  [ -n "$1" ] && query="$query&max_id=$1"
  shift
  [ -n "$1" ] && query="$query&since_id=$1"
  shift
}