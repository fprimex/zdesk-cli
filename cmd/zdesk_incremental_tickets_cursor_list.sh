# https://developer.zendesk.com/rest_api/docs/core/incremental_export#start-time
zdesk_incremental_tickets_cursor_list () {
  method=GET
  url=/api/v2/incremental/tickets/cursor.json
  [ -n "$1" ] && query="$query&cursor=$1"
  shift
  [ -n "$1" ] && query="$query&start_time=$1"
  shift
}