# https://developer.zendesk.com/rest_api/docs/core/tickets#list-email-ccs-for-a-ticket
zdesk_ticket_email_ccs () {
  method=GET
  url="$(echo "/api/v2/tickets/{id}/email_ccs" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}