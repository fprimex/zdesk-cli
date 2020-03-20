# https://developer.zendesk.com/rest_api/docs/core/dynamic_content#update-variant
zdesk_dynamic_content_item_variant_update () {
  method=PUT
  url="$(echo "/api/v2/dynamic_content/items/{item_id}/variants/{id}.json" | sed \
    -e "s/{item_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}