# https://developer.zendesk.com/rest_api/docs/core/brands#delete-a-brand
zdesk_brand_delete () {
  method=DELETE
  url="$(echo "/api/v2/brands/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}