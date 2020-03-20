# https://developer.zendesk.com/rest_api/docs/core/organizations#search-organizations-by-external-id
zdesk_organizations_search () {
  method=GET
  url=/api/v2/organizations/search.json
  [ -n "$1" ] && query="$query&external_id=$1"
  shift
}