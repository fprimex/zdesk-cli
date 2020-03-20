# https://developer.zendesk.com/rest_api/docs/core/incremental_export#incremental-ticket-event-export
zdesk_incremental_users_list () {
  method=GET
  url=/api/v2/incremental/users.json
  [ -n "$1" ] && query="$query&start_time=$1"
  shift
}