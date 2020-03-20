# https://developer.zendesk.com/rest_api/docs/core/users#list-users
zdesk_users_list () {
  method=GET
  url=/api/v2/users.json
  [ -n "$1" ] && query="$query&permission_set=$1"
  shift
  [ -n "$1" ] && query="$query&role=$1"
  shift
}