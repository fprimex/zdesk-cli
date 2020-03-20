# https://developer.zendesk.com/rest_api/docs/core/tickets#bulk-delete-tickets
zdesk_tickets_destroy_many () {
  method=DELETE
  url=/api/v2/tickets/destroy_many.json
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}