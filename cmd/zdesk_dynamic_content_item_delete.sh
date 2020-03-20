# https://developer.zendesk.com/rest_api/docs/core/dynamic_content#delete-item
zdesk_dynamic_content_item_delete () {
  method=DELETE
  url="$(echo "/api/v2/dynamic_content/items/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}