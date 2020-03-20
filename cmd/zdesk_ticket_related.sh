# https://developer.zendesk.com/rest_api/docs/core/tickets#ticket-related-information
zdesk_ticket_related () {
  method=GET
  url="$(echo "/api/v2/tickets/{id}/related.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}