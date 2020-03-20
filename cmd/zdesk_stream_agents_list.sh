# https://developer.zendesk.com/rest_api/docs/chat/apis#get-all-agents-status
zdesk_stream_agents_list () {
  method=GET
  url=/stream/agents
  [ -n "$1" ] && query="$query&department_id=$1"
  shift
}