# https://developer.zendesk.com/rest_api/docs/core/tags#add-tags
zdesk_ticket_tags_update () {
  method=PUT
  url="$(echo "/api/v2/tickets/{id}/tags.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}