# https://developer.zendesk.com/rest_api/docs/core/suspended_tickets#recover-multiple-suspended-tickets
zdesk_suspended_tickets_recover_many () {
  method=PUT
  url=/api/v2/suspended_tickets/recover_many.json
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}