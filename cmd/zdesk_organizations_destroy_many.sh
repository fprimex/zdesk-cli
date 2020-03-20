# https://developer.zendesk.com/rest_api/docs/core/organizations#bulk-delete-organizations
zdesk_organizations_destroy_many () {
  method=DELETE
  url=/api/v2/organizations/destroy_many.json
  [ -n "$1" ] && query="$query&external_ids=$1"
  shift
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}