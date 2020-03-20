# https://developer.zendesk.com/rest_api/docs/core/tickets#listing-ticket-incidents
zdesk_ticket_incidents () {
  method=GET
  url="$(echo "/api/v2/tickets/{id}/incidents.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}