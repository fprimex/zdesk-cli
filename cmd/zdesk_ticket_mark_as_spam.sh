# https://developer.zendesk.com/rest_api/docs/core/tickets#mark-ticket-as-spam-and-suspend-requester
zdesk_ticket_mark_as_spam () {
  method=PUT
  url="$(echo "/api/v2/tickets/{id}/mark_as_spam.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}