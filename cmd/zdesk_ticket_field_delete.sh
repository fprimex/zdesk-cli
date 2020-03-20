# https://developer.zendesk.com/rest_api/docs/core/ticket_fields#delete-ticket-field
zdesk_ticket_field_delete () {
  method=DELETE
  url="$(echo "/api/v2/ticket_fields/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}