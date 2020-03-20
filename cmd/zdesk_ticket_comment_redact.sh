# https://developer.zendesk.com/rest_api/docs/core/ticket_comments#redact-string-in-comment
zdesk_ticket_comment_redact () {
  method=PUT
  url="$(echo "/api/v2/tickets/{ticket_id}/comments/{id}/redact.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}