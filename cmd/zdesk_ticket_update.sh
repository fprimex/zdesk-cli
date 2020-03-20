# https://developer.zendesk.com/rest_api/docs/core/tickets#update-ticket
zdesk_ticket_update () {
  method=PUT
  url="$(echo "/api/v2/tickets/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}