# https://developer.zendesk.com/rest_api/docs/core/macros#show-ticket-after-changes
zdesk_ticket_macro_apply () {
  method=GET
  url="$(echo "/api/v2/tickets/{ticket_id}/macros/{id}/apply.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}