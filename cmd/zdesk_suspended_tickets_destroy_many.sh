# https://developer.zendesk.com/rest_api/docs/core/suspended_tickets#delete-multiple-suspended-tickets
zdesk_suspended_tickets_destroy_many () {
  method=DELETE
  url=/api/v2/suspended_tickets/destroy_many.json
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}