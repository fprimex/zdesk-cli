# https://developer.zendesk.com/rest_api/docs/core/organizations#show-many-organizations
zdesk_organizations_show_many () {
  method=GET
  url=/api/v2/organizations/show_many.json
  [ -n "$1" ] && query="$query&external_ids=$1"
  shift
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}