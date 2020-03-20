# https://developer.zendesk.com/rest_api/docs/core/requests#search-requests
zdesk_requests_search () {
  method=GET
  url=/api/v2/requests/search.json
  [ -n "$1" ] && query="$query&cc_id=$1"
  shift
  [ -n "$1" ] && query="$query&organization_id=$1"
  shift
  [ -n "$1" ] && query="$query&query=$1"
  shift
  [ -n "$1" ] && query="$query&status=$1"
  shift
}