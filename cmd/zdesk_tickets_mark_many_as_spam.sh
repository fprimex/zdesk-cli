# https://developer.zendesk.com/rest_api/docs/core/tickets#bulk-mark-tickets-as-spam
zdesk_tickets_mark_many_as_spam () {
  method=PUT
  url=/api/v2/tickets/mark_many_as_spam.json
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}