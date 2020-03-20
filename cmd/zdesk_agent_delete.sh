# https://developer.zendesk.com/rest_api/docs/chat/agents#delete-agent
zdesk_agent_delete () {
  method=DELETE
  url="$(echo "/api/v2/agents/{agent_id}" | sed \
    -e "s/{agent_id}"/"$1"/ \
  )"
  shift
}