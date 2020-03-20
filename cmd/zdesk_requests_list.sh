# https://developer.zendesk.com/rest_api/docs/core/requests#list-requests
zdesk_requests_list () {
  method=GET
  url=/api/v2/requests.json
  [ -n "$1" ] && query="$query&status=$1"
  shift
}