# https://developer.zendesk.com/rest_api/docs/core/incremental_export#incremental-ticket-export
zdesk_incremental_organizations_list () {
  method=GET
  url=/api/v2/incremental/organizations.json
  [ -n "$1" ] && query="$query&start_time=$1"
  shift
}