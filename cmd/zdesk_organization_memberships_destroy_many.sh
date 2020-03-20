# https://developer.zendesk.com/rest_api/docs/core/organization_memberships#bulk-delete-memberships
zdesk_organization_memberships_destroy_many () {
  method=DELETE
  url=/api/v2/organization_memberships/destroy_many.json
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}