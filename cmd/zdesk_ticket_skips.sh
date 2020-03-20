# https://developer.zendesk.com/rest_api/docs/core/ticket_skips#list-skips-for-the-current-account
zdesk_ticket_skips () {
  method=GET
  url="$(echo "/api/v2/tickets/{ticket_id}/skips.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
  )"
  shift
}