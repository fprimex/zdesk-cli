# https://developer.zendesk.com/rest_api/docs/core/ticket_forms#show-ticket-form
zdesk_ticket_form_show () {
  method=GET
  url="$(echo "/api/v2/ticket_forms/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}