# https://developer.zendesk.com/rest_api/docs/core/views#export-view
zdesk_view_export () {
  method=GET
  url="$(echo "/api/v2/views/{id}/export.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}