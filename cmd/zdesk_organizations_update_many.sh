# https://developer.zendesk.com/rest_api/docs/core/organizations#update-many-organizations
zdesk_organizations_update_many () {
  method=PUT
  url=/api/v2/organizations/update_many.json
  [ -n "$1" ] && query="$query&external_ids=$1"
  shift
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}