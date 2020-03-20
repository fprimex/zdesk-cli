# https://developer.zendesk.com/rest_api/docs/core/tickets#list-followers-for-a-ticket
zdesk_ticket_followers () {
  method=GET
  url="$(echo "/api/v2/tickets/{id}/followers" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}