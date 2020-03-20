# https://developer.zendesk.com/rest_api/docs/core/attachments#redact-comment-attachment
zdesk_ticket_comment_attachment_redact () {
  method=PUT
  url="$(echo "/api/v2/tickets/{ticket_id}/comments/{comment_id}/attachments/{attachment_id}/redact.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
    -e "s/{comment_id}"/"$1"/ \
    -e "s/{attachment_id}"/"$1"/ \
  )"
  shift
  shift
  shift
}