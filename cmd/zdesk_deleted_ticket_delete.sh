# https://developer.zendesk.com/rest_api/docs/core/tickets#delete-ticket-permanently
zdesk_deleted_ticket_delete () {
  method=DELETE
  url="$(echo "/api/v2/deleted_tickets/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}