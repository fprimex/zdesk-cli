# https://developer.zendesk.com/rest_api/docs/core/tickets#delete-ticket
zdesk_ticket_delete () {
  method=DELETE
  url="$(echo "/api/v2/tickets/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}