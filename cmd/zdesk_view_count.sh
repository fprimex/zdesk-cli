# https://developer.zendesk.com/rest_api/docs/core/views#get-view-count
zdesk_view_count () {
  method=GET
  url="$(echo "/api/v2/views/{id}/count.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}