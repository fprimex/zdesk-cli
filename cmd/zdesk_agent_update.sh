# https://developer.zendesk.com/rest_api/docs/chat/agents#update-agent
zdesk_agent_update () {
  method=PUT
  url="$(echo "/api/v2/agents/{agent_id}" | sed \
    -e "s/{agent_id}"/"$1"/ \
  )"
  shift
}