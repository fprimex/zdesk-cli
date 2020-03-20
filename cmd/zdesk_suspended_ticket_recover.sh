# https://developer.zendesk.com/rest_api/docs/core/suspended_tickets#recover-suspended-ticket
zdesk_suspended_ticket_recover () {
  method=PUT
  url="$(echo "/api/v2/suspended_tickets/{id}/recover.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}