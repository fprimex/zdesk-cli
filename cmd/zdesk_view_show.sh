# https://developer.zendesk.com/rest_api/docs/core/views#show-view
zdesk_view_show () {
  method=GET
  url="$(echo "/api/v2/views/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}