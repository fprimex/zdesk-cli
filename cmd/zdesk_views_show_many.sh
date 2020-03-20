# https://developer.zendesk.com/rest_api/docs/core/views#list-views-by-id
zdesk_views_show_many () {
  method=GET
  url=/api/v2/views/show_many.json
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}