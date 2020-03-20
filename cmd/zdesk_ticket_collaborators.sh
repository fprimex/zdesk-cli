# https://developer.zendesk.com/rest_api/docs/core/tickets#list-collaborators-for-a-ticket
zdesk_ticket_collaborators () {
  method=GET
  url="$(echo "/api/v2/tickets/{id}/collaborators.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}