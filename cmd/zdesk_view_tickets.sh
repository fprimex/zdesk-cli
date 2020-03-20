# https://developer.zendesk.com/rest_api/docs/core/views#list-tickets-from-a-view
zdesk_view_tickets () {
  method=GET
  url="$(echo "/api/v2/views/{id}/tickets.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}