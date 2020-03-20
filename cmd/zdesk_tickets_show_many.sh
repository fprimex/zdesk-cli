# https://developer.zendesk.com/rest_api/docs/core/tickets#show-multiple-tickets
zdesk_tickets_show_many () {
  method=GET
  url=/api/v2/tickets/show_many.json
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}