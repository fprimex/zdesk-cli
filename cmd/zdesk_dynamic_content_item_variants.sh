# https://developer.zendesk.com/rest_api/docs/core/dynamic_content#list-variants
zdesk_dynamic_content_item_variants () {
  method=GET
  url="$(echo "/api/v2/dynamic_content/items/{id}/variants.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}