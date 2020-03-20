# https://developer.zendesk.com/rest_api/docs/core/ticket_fields#show-ticket-field-option
zdesk_ticket_field_option_show () {
  method=GET
  url="$(echo "/api/v2/ticket_fields/{field_id}/options/{id}.json" | sed \
    -e "s/{field_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}