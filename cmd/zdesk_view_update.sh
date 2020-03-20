# https://developer.zendesk.com/rest_api/docs/core/views#update-view
zdesk_view_update () {
  method=PUT
  url="$(echo "/api/v2/views/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}