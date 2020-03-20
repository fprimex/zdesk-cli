# https://developer.zendesk.com/rest_api/docs/core/brands#update-a-brand
zdesk_brand_update () {
  method=PUT
  url="$(echo "/api/v2/brands/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}