# https://developer.zendesk.com/rest_api/docs/core/ticket_audits#list-audits-for-a-ticket
zdesk_ticket_audits () {
  method=GET
  url="$(echo "/api/v2/tickets/{ticket_id}/audits.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
  )"
  shift
}