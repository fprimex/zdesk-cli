# https://developer.zendesk.com/rest_api/docs/core/search#show-results-count
zdesk_search_count () {
  method=GET
  url=/api/v2/search/count.json
  [ -n "$1" ] && query="$query&query=$1"
  shift
}