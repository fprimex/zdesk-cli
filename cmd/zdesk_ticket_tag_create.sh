# https://developer.zendesk.com/rest_api/docs/core/tags#set-tags
zdesk_ticket_tag_create () {
  method=POST
  url="$(echo "/api/v2/tickets/{id}/tags.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}