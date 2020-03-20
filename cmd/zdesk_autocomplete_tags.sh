# https://developer.zendesk.com/rest_api/docs/core/tags#autocomplete-tags
zdesk_autocomplete_tags () {
  method=GET
  url=/api/v2/autocomplete/tags.json
  [ -n "$1" ] && query="$query&name=$1"
  shift
}