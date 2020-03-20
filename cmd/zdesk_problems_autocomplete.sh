# https://developer.zendesk.com/rest_api/docs/core/tickets#autocomplete-problems
zdesk_problems_autocomplete () {
  method=POST
  url=/api/v2/problems/autocomplete.json
  [ -n "$1" ] && query="$query&text=$1"
  shift
}