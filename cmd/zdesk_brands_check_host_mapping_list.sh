# https://developer.zendesk.com/rest_api/docs/core/brands#check-host-mapping-validity
zdesk_brands_check_host_mapping_list () {
  method=GET
  url=/api/v2/brands/check_host_mapping.json
  [ -n "$1" ] && query="$query&host_mapping=$1"
  shift
  [ -n "$1" ] && query="$query&subdomain=$1"
  shift
}