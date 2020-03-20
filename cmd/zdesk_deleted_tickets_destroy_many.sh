# https://developer.zendesk.com/rest_api/docs/core/tickets#delete-multiple-tickets-permanently
zdesk_deleted_tickets_destroy_many () {
  method=DELETE
  url=/api/v2/deleted_tickets/destroy_many
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}