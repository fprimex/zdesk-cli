# https://developer.zendesk.com/rest_api/docs/core/brands#check-host-mapping-validity-for-an-existing-brand
zdesk_brand_check_host_mapping () {
  method=GET
  url="$(echo "/api/v2/brands/{id}/check_host_mapping.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}