# https://developer.zendesk.com/rest_api/docs/core/side_conversation#create-side-conversation
zdesk_ticket_side_conversation_create () {
  method=POST
  url="$(echo "/api/v2/tickets/{ticket_id}/side_conversations.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
  )"
  shift
}