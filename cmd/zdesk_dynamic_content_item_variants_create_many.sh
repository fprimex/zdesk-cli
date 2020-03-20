# https://developer.zendesk.com/rest_api/docs/core/dynamic_content#create-many-variants
zdesk_dynamic_content_item_variants_create_many () {
  method=POST
  url="$(echo "/api/v2/dynamic_content/items/{id}/variants/create_many.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}