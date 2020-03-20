# https://developer.zendesk.com/rest_api/docs/core/side_conversation#list-side-conversations
zdesk_ticket_side_conversations () {
  method=GET
  url="$(echo "/api/v2/tickets/{ticket_id}/side_conversations.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
  )"
  shift
}