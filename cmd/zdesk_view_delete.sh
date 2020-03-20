# https://developer.zendesk.com/rest_api/docs/core/views#delete-view
zdesk_view_delete () {
  method=DELETE
  url="$(echo "/api/v2/views/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}