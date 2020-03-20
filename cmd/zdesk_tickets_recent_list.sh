# https://developer.zendesk.com/rest_api/docs/core/tickets#allowed-for
zdesk_tickets_recent_list () {
  method=GET
  url=/api/v2/tickets/recent.json
  [ -n "$1" ] && query="$query&external_id=$1"
  shift
}