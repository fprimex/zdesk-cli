# https://developer.zendesk.com/rest_api/docs/core/ticket_fields#create-or-update-ticket-field-option
zdesk_ticket_field_option_create () {
  method=POST
  url="$(echo "/api/v2/ticket_fields/{field_id}/options.json" | sed \
    -e "s/{field_id}"/"$1"/ \
  )"
  shift
}