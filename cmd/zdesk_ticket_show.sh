# https://developer.zendesk.com/rest_api/docs/core/tickets#show-ticket
zdesk_ticket_show () {
  method=GET
  url="$(echo "/api/v2/tickets/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}