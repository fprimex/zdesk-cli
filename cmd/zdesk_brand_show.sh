# https://developer.zendesk.com/rest_api/docs/core/brands#show-a-brand
zdesk_brand_show () {
  method=GET
  url="$(echo "/api/v2/brands/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}