# https://developer.zendesk.com/rest_api/docs/core/views#get-view-counts
zdesk_views_count_many_list () {
  method=GET
  url=/api/v2/views/count_many.json
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}