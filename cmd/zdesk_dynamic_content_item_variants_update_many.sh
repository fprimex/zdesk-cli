# https://developer.zendesk.com/rest_api/docs/core/dynamic_content#update-many-variants
zdesk_dynamic_content_item_variants_update_many () {
  method=PUT
  url="$(echo "/api/v2/dynamic_content/items/{id}/variants/update_many.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}