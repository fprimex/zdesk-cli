# https://developer.zendesk.com/rest_api/docs/core/side_conversation#update-side-conversation
zdesk_ticket_side_conversation_update () {
  method=PUT
  url="$(echo "/api/v2/tickets/{ticket_id}/side_conversations/{side_conversation_id}.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
    -e "s/{side_conversation_id}"/"$1"/ \
  )"
  shift
  shift
}