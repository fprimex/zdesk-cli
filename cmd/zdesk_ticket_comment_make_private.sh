# https://developer.zendesk.com/rest_api/docs/core/ticket_comments#make-comment-private
zdesk_ticket_comment_make_private () {
  method=PUT
  url="$(echo "/api/v2/tickets/{ticket_id}/comments/{id}/make_private.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}