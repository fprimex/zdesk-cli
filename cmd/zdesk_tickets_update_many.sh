# https://developer.zendesk.com/rest_api/docs/core/tickets#update-many-tickets
zdesk_tickets_update_many () {
  method=PUT
  url=/api/v2/tickets/update_many.json
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}