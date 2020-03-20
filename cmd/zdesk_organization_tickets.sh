# https://developer.zendesk.com/rest_api/docs/core/tickets#allowed-for
zdesk_organization_tickets () {
  method=GET
  url="$(echo "/api/v2/organizations/{organization_id}/tickets.json" | sed \
    -e "s/{organization_id}"/"$1"/ \
  )"
  shift
  [ -n "$1" ] && query="$query&external_id=$1"
  shift
}