# https://developer.zendesk.com/rest_api/docs/core/tags#remove-tags
zdesk_ticket_tags_delete () {
  method=DELETE
  url="$(echo "/api/v2/tickets/{id}/tags.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}