# https://developer.zendesk.com/rest_api/docs/chat/agents#get-agent-by-email-id
zdesk_agents_email_show () {
  method=GET
  url="$(echo "/api/v2/agents/email/{email_id}" | sed \
    -e "s/{email_id}"/"$1"/ \
  )"
  shift
}