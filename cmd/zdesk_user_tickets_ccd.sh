# https://developer.zendesk.com/rest_api/docs/core/tickets#allowed-for
zdesk_user_tickets_ccd () {
  method=GET
  url="$(echo "/api/v2/users/{user_id}/tickets/ccd.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
  [ -n "$1" ] && query="$query&external_id=$1"
  shift
}