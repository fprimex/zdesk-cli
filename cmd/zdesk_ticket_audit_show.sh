# https://developer.zendesk.com/rest_api/docs/core/ticket_audits#show-audit
zdesk_ticket_audit_show () {
  method=GET
  url="$(echo "/api/v2/tickets/{ticket_id}/audits/{id}.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}