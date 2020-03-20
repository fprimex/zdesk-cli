# https://developer.zendesk.com/rest_api/docs/core/group_memberships#bulk-delete-memberships
zdesk_group_memberships_destroy_many () {
  method=DELETE
  url=/api/v2/group_memberships/destroy_many.json
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}