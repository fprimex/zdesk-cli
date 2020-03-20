# https://developer.zendesk.com/rest_api/docs/core/dynamic_content#show-item
zdesk_dynamic_content_item_show () {
  method=GET
  url="$(echo "/api/v2/dynamic_content/items/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}