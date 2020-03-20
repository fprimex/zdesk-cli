# https://developer.zendesk.com/rest_api/docs/core/incremental_export#cursor
zdesk_incremental_ticket_events_list () {
  method=GET
  url=/api/v2/incremental/ticket_events.json
  [ -n "$1" ] && query="$query&start_time=$1"
  shift
}