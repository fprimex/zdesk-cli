# https://developer.zendesk.com/rest_api/docs/core/organizations#autocomplete-organizations
zdesk_organizations_autocomplete () {
  method=GET
  url=/api/v2/organizations/autocomplete.json
  [ -n "$1" ] && query="$query&name=$1"
  shift
}