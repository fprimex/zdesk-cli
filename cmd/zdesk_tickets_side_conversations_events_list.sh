# https://developer.zendesk.com/rest_api/docs/core/side_conversation_event#incremental-side-conversation-event-export
zdesk_tickets_side_conversations_events_list () {
  method=GET
  url=/api/v2/tickets/side_conversations/events.json
  [ -n "$1" ] && query="$query&start_time=$1"
  shift
}