# https://developer.zendesk.com/rest_api/docs/chat/apis#get-single-status-for-agents
zdesk_stream_agent_show () {
  method=GET
  url="$(echo "/stream/agents/{metric_key}" | sed \
    -e "s/{metric_key}"/"$1"/ \
  )"
  shift
  [ -n "$1" ] && query="$query&department_id=$1"
  shift
}