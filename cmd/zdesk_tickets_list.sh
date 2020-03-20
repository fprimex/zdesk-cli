# https://developer.zendesk.com/rest_api/docs/core/tickets#json-format
zdesk_tickets_list () {
  method=GET
  url=/api/v2/tickets.json
  [ -n "$1" ] && query="$query&external_id=$1"
  shift
}