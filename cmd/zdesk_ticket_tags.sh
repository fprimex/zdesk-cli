# https://developer.zendesk.com/rest_api/docs/core/tags#show-tags
zdesk_ticket_tags () {
  method=GET
  url="$(echo "/api/v2/tickets/{id}/tags.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}