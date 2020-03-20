# https://developer.zendesk.com/rest_api/docs/chat/agents#get-agent-by-id
zdesk_agent_show () {
  method=GET
  url="$(echo "/api/v2/agents/{agent_id}" | sed \
    -e "s/{agent_id}"/"$1"/ \
  )"
  shift
}