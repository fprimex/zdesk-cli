# https://developer.zendesk.com/rest_api/docs/core/ticket_fields#list-ticket-field-options
zdesk_ticket_field_options () {
  method=GET
  url="$(echo "/api/v2/ticket_fields/{field_id}/options.json" | sed \
    -e "s/{field_id}"/"$1"/ \
  )"
  shift
}