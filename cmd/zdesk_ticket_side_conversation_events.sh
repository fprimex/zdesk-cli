# https://developer.zendesk.com/rest_api/docs/core/side_conversation_event#list-side-conversation-events
zdesk_ticket_side_conversation_events () {
  method=GET
  url="$(echo "/api/v2/tickets/{ticket_id}/side_conversations/{id}/events.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}