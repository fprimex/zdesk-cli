# https://developer.zendesk.com/rest_api/docs/core/tickets#merge-tickets-into-target-ticket
zdesk_ticket_merge () {
  method=POST
  url="$(echo "/api/v2/tickets/{id}/merge.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}