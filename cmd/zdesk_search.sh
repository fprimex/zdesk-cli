# https://developer.zendesk.com/rest_api/docs/core/search#list-search-results
zdesk_search () {
  method=GET
  url=/api/v2/search.json
  [ -n "$1" ] && query="$query&query=$1"
  shift
}