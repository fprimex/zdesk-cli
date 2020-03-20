# https://developer.zendesk.com/rest_api/docs/core/views#execute-view
zdesk_view_execute () {
  method=GET
  url="$(echo "/api/v2/views/{id}/execute.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}