# https://developer.zendesk.com/rest_api/docs/core/ticket_audits#change-a-comment-from-public-to-private
zdesk_ticket_audit_make_private () {
  method=PUT
  url="$(echo "/api/v2/tickets/{ticket_id}/audits/{id}/make_private.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}