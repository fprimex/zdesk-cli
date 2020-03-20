# https://developer.zendesk.com/rest_api/docs/core/ticket_forms#clone-an-already-existing-ticket-form
zdesk_ticket_form_clone () {
  method=POST
  url="$(echo "/api/v2/ticket_forms/{id}/clone.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}