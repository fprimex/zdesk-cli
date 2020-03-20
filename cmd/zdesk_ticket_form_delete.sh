# https://developer.zendesk.com/rest_api/docs/core/ticket_forms#delete-ticket-form
zdesk_ticket_form_delete () {
  method=DELETE
  url="$(echo "/api/v2/ticket_forms/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}