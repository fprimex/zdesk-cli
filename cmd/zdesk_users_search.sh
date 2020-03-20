# https://developer.zendesk.com/rest_api/docs/core/users#search-users
zdesk_users_search () {
  method=GET
  url=/api/v2/users/search.json
  [ -n "$1" ] && query="$query&external_id=$1"
  shift
  [ -n "$1" ] && query="$query&query=$1"
  shift
}