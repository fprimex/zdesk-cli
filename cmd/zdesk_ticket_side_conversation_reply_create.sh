# https://developer.zendesk.com/rest_api/docs/core/side_conversation#reply-to-a-side-conversation
zdesk_ticket_side_conversation_reply_create () {
  method=POST
  url="$(echo "/api/v2/tickets/{ticket_id}/side_conversations/{id}/reply.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}