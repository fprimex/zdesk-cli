# https://developer.zendesk.com/rest_api/docs/core/ticket_forms#update-ticket-forms
zdesk_ticket_form_update () {
  method=PUT
  url="$(echo "/api/v2/ticket_forms/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}