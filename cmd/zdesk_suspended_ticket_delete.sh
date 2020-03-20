# https://developer.zendesk.com/rest_api/docs/core/suspended_tickets#delete-suspended-ticket
zdesk_suspended_ticket_delete () {
  method=DELETE
  url="$(echo "/api/v2/suspended_tickets/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}