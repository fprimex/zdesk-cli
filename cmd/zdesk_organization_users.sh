# https://developer.zendesk.com/rest_api/docs/core/users#list-users
zdesk_organization_users () {
  method=GET
  url="$(echo "/api/v2/organizations/{id}/users.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  [ -n "$1" ] && query="$query&permission_set=$1"
  shift
  [ -n "$1" ] && query="$query&role=$1"
  shift
}