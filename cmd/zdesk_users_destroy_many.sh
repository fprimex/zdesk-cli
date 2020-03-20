# https://developer.zendesk.com/rest_api/docs/core/users#bulk-deleting-users
zdesk_users_destroy_many () {
  method=DELETE
  url=/api/v2/users/destroy_many.json
  [ -n "$1" ] && query="$query&external_ids=$1"
  shift
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}