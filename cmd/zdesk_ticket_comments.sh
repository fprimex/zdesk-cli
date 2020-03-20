# https://developer.zendesk.com/rest_api/docs/core/ticket_comments#list-comments
zdesk_ticket_comments () {
  method=GET
  url="$(echo "/api/v2/tickets/{ticket_id}/comments.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
  )"
  shift
}