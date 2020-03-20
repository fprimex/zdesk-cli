# https://developer.zendesk.com/rest_api/docs/core/users#autocomplete-users
zdesk_users_autocomplete () {
  method=GET
  url=/api/v2/users/autocomplete.json
  [ -n "$1" ] && query="$query&name=$1"
  shift
}