# https://developer.zendesk.com/rest_api/docs/core/dynamic_content#show-many-items
zdesk_dynamic_content_items_show_many () {
  method=GET
  url=/api/v2/dynamic_content/items/show_many.json
  [ -n "$1" ] && query="$query&identifiers=$1"
  shift
}